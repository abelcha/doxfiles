# Print an optspec for argparse to handle cmd's options that are independent of any subcommand.
function __fish_ab_av1_global_optspecs
    string join \n h/help V/version
end

function __fish_ab_av1_needs_command
    # Figure out if the current invocation already has a command.
    set -l cmd (commandline -opc)
    set -e cmd[1]
    argparse -s (__fish_ab_av1_global_optspecs) -- $cmd 2>/dev/null
    or return
    if set -q argv[1]
        # Also print the command, so this can be used to figure out what it is.
        echo $argv[1]
        return 1
    end
    return 0
end

function __fish_ab_av1_using_subcommand
    set -l cmd (__fish_ab_av1_needs_command)
    test -z "$cmd"
    and return 1
    contains -- $cmd[1] $argv
end

complete -c ab-av1 -n "__fish_ab_av1_needs_command" -s h -l help -d 'Print help'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -s V -l version -d 'Print version'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "sample-encode" -d 'Encode & analyse input samples to predict how a full encode would go. This is much quicker than a full encode/vmaf run.'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "vmaf" -d 'Full VMAF score calculation, distorted file vs reference file. Works with videos and images.'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "xpsnr" -d 'Full XPSNR score calculation, distorted file vs reference file. Works with videos and images.'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "encode" -d 'Invoke ffmpeg to encode a video or image'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "crf-search" -d 'Interpolated binary search using sample-encode to find the best crf value delivering min-vmaf & max-encoded-percent.'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "auto-encode" -d 'Automatically determine the best crf to deliver the min-vmaf and use it to encode a video or image.'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "print-completions" -d 'Print shell completions'
complete -c ab-av1 -n "__fish_ab_av1_needs_command" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -s e -l encoder -d 'Encoder override. See https://ffmpeg.org/ffmpeg-all.html#toc-Video-Encoders' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -s i -l input -d 'Input video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l vfilter -d 'Ffmpeg video filter applied to the input before encoding. E.g. --vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l pix-format -d 'Pixel format. libsvtav1, libaom-av1 & librav1e default to yuv420p10le' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l preset -d 'Encoder preset (0-13). Higher presets means faster encodes, but with a quality tradeoff' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l keyint -d 'Interval between keyframes. Can be specified as a number of frames, or a duration. E.g. "300" or "10s". Defaults to 10s if the input duration is over 3m' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l scd -d 'Svt-av1 scene change detection, inserts keyframes at scene changes. Defaults on if using default keyint & the input duration is over 3m. Otherwise off' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l svt -d 'Additional svt-av1 arg(s). E.g. --svt mbr=2000 --svt film-grain=8' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l enc -d 'Additional ffmpeg encoder arg(s). E.g. `--enc x265-params=lossless=1` These are added as ffmpeg output file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l enc-input -d 'Additional ffmpeg input encoder arg(s). E.g. `--enc-input r=1` These are added as ffmpeg input file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l crf -d 'Encoder constant rate factor (e.g. 1-63 for svt-av1). Lower means better quality' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l samples -d 'Number of samples to use across the input video. Overrides --sample-every. More samples take longer but may provide a more accurate result' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l sample-every -d 'Calculate number of samples by dividing the input duration by this value. So "12m" would mean with an input 25-36 minutes long, 3 samples would be used. More samples take longer but may provide a more accurate result' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l min-samples -d 'Minimum number of samples. So at least this many samples will be used' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l sample-duration -d 'Duration of each sample' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l temp-dir -d 'Directory to store temporary sample data in. Defaults to the current working directory' -r -f -a "(__fish_complete_directories)"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l cache -d 'Enable sample-encode caching' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l stdout-format -d 'Stdout message format `human` or `json`' -r -f -a "human\t''
json\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l and-vmaf -d 'Set to calculate vmaf when it would otherwise not be, e.g. when calculating xpsnr. So using this allows both vmaf & xpsnr to be calculated at the same time' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l vmaf -d 'Additional vmaf arg(s). E.g. --vmaf n_threads=8 --vmaf n_subsample=4' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l vmaf-scale -d 'Video resolution scale to use in VMAF analysis. If set, video streams will be bicubic scaled to this during VMAF analysis. `auto` (default) automatically sets based on the model and input video resolution. `none` disables any scaling. `WxH` format may be used to specify custom scaling, e.g. `1920x1080`' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l vmaf-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l reference-vfilter -d 'Ffmpeg video filter applied to the VMAF/XPSNR reference before analysis. E.g. --reference-vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l xpsnr-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l xpsnr-pix-format -d 'Pixel format used in xpsnr analysis only. By default this is inferred from sources' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l keep -d 'Keep temporary files after exiting'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -l xpsnr -d 'Calculate a XPSNR score instead of VMAF'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand sample-encode" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -l reference -d 'Reference video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -l distorted -d 'Re-encoded/distorted video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -l and-vmaf -d 'Set to calculate vmaf when it would otherwise not be, e.g. when calculating xpsnr. So using this allows both vmaf & xpsnr to be calculated at the same time' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -l vmaf -d 'Additional vmaf arg(s). E.g. --vmaf n_threads=8 --vmaf n_subsample=4' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -l vmaf-scale -d 'Video resolution scale to use in VMAF analysis. If set, video streams will be bicubic scaled to this during VMAF analysis. `auto` (default) automatically sets based on the model and input video resolution. `none` disables any scaling. `WxH` format may be used to specify custom scaling, e.g. `1920x1080`' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -l vmaf-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -l reference-vfilter -d 'Ffmpeg video filter applied to the VMAF/XPSNR reference before analysis. E.g. --reference-vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand vmaf" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand xpsnr" -l reference -d 'Reference video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand xpsnr" -l distorted -d 'Re-encoded/distorted video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand xpsnr" -l reference-vfilter -d 'Ffmpeg video filter applied to the VMAF/XPSNR reference before analysis. E.g. --reference-vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand xpsnr" -l xpsnr-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand xpsnr" -l xpsnr-pix-format -d 'Pixel format used in xpsnr analysis only. By default this is inferred from sources' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand xpsnr" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -s e -l encoder -d 'Encoder override. See https://ffmpeg.org/ffmpeg-all.html#toc-Video-Encoders' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -s i -l input -d 'Input video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l vfilter -d 'Ffmpeg video filter applied to the input before encoding. E.g. --vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l pix-format -d 'Pixel format. libsvtav1, libaom-av1 & librav1e default to yuv420p10le' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l preset -d 'Encoder preset (0-13). Higher presets means faster encodes, but with a quality tradeoff' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l keyint -d 'Interval between keyframes. Can be specified as a number of frames, or a duration. E.g. "300" or "10s". Defaults to 10s if the input duration is over 3m' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l scd -d 'Svt-av1 scene change detection, inserts keyframes at scene changes. Defaults on if using default keyint & the input duration is over 3m. Otherwise off' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l svt -d 'Additional svt-av1 arg(s). E.g. --svt mbr=2000 --svt film-grain=8' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l enc -d 'Additional ffmpeg encoder arg(s). E.g. `--enc x265-params=lossless=1` These are added as ffmpeg output file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l enc-input -d 'Additional ffmpeg input encoder arg(s). E.g. `--enc-input r=1` These are added as ffmpeg input file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l crf -d 'Encoder constant rate factor (e.g. 1-63 for svt-av1). Lower means better quality' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -s o -l output -d 'Output file, by default the same as input with `.av1` before the extension' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l acodec -d 'Set the output ffmpeg audio codec. By default \'copy\' is used. Otherwise, if re-encoding is necessary, \'libopus\' is default' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l downmix-to-stereo -d 'Downmix input audio streams to stereo if input streams use greater than 3 channels'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l video-only -d 'Only process the main video stream, drop all other streams'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -l overwrite-input -d 'By default input files will not be overwritten to prevent accidental data loss. Setting this option overrides that allowing input overwrites'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand encode" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -s e -l encoder -d 'Encoder override. See https://ffmpeg.org/ffmpeg-all.html#toc-Video-Encoders' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -s i -l input -d 'Input video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l vfilter -d 'Ffmpeg video filter applied to the input before encoding. E.g. --vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l pix-format -d 'Pixel format. libsvtav1, libaom-av1 & librav1e default to yuv420p10le' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l preset -d 'Encoder preset (0-13). Higher presets means faster encodes, but with a quality tradeoff' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l keyint -d 'Interval between keyframes. Can be specified as a number of frames, or a duration. E.g. "300" or "10s". Defaults to 10s if the input duration is over 3m' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l scd -d 'Svt-av1 scene change detection, inserts keyframes at scene changes. Defaults on if using default keyint & the input duration is over 3m. Otherwise off' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l svt -d 'Additional svt-av1 arg(s). E.g. --svt mbr=2000 --svt film-grain=8' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l enc -d 'Additional ffmpeg encoder arg(s). E.g. `--enc x265-params=lossless=1` These are added as ffmpeg output file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l enc-input -d 'Additional ffmpeg input encoder arg(s). E.g. `--enc-input r=1` These are added as ffmpeg input file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l min-vmaf -d 'Desired min VMAF score to deliver' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l min-xpsnr -d 'Desired min XPSNR score to deliver' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l max-encoded-percent -d 'Maximum desired encoded size percentage of the input size' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l min-crf -d 'Minimum (highest quality) crf value to try' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l max-crf -d 'Maximum (lowest quality) crf value to try' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l crf-increment -d 'Constant rate factor search increment precision' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l high-crf-means-hq -d 'Set the interpretation of crf so that higher crfs mean higher quality. For most encoders *lower* crfs mean higher quality' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l cache -d 'Enable sample-encode caching' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l samples -d 'Number of samples to use across the input video. Overrides --sample-every. More samples take longer but may provide a more accurate result' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l sample-every -d 'Calculate number of samples by dividing the input duration by this value. So "12m" would mean with an input 25-36 minutes long, 3 samples would be used. More samples take longer but may provide a more accurate result' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l min-samples -d 'Minimum number of samples. So at least this many samples will be used' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l sample-duration -d 'Duration of each sample' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l temp-dir -d 'Directory to store temporary sample data in. Defaults to the current working directory' -r -f -a "(__fish_complete_directories)"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l and-vmaf -d 'Set to calculate vmaf when it would otherwise not be, e.g. when calculating xpsnr. So using this allows both vmaf & xpsnr to be calculated at the same time' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l vmaf -d 'Additional vmaf arg(s). E.g. --vmaf n_threads=8 --vmaf n_subsample=4' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l vmaf-scale -d 'Video resolution scale to use in VMAF analysis. If set, video streams will be bicubic scaled to this during VMAF analysis. `auto` (default) automatically sets based on the model and input video resolution. `none` disables any scaling. `WxH` format may be used to specify custom scaling, e.g. `1920x1080`' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l vmaf-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l reference-vfilter -d 'Ffmpeg video filter applied to the VMAF/XPSNR reference before analysis. E.g. --reference-vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l xpsnr-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l xpsnr-pix-format -d 'Pixel format used in xpsnr analysis only. By default this is inferred from sources' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l stdout-format -d 'Stdout message format `human` or `json`' -r -f -a "human\t''
json\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l thorough -d 'Keep searching until a crf is found no more than min_vmaf+0.05 or all possibilities have been attempted'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -l keep -d 'Keep temporary files after exiting'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -s v -l verbose -d 'Increase logging verbosity'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -s q -l quiet -d 'Decrease logging verbosity'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand crf-search" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -s e -l encoder -d 'Encoder override. See https://ffmpeg.org/ffmpeg-all.html#toc-Video-Encoders' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -s i -l input -d 'Input video file' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l vfilter -d 'Ffmpeg video filter applied to the input before encoding. E.g. --vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l pix-format -d 'Pixel format. libsvtav1, libaom-av1 & librav1e default to yuv420p10le' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l preset -d 'Encoder preset (0-13). Higher presets means faster encodes, but with a quality tradeoff' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l keyint -d 'Interval between keyframes. Can be specified as a number of frames, or a duration. E.g. "300" or "10s". Defaults to 10s if the input duration is over 3m' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l scd -d 'Svt-av1 scene change detection, inserts keyframes at scene changes. Defaults on if using default keyint & the input duration is over 3m. Otherwise off' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l svt -d 'Additional svt-av1 arg(s). E.g. --svt mbr=2000 --svt film-grain=8' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l enc -d 'Additional ffmpeg encoder arg(s). E.g. `--enc x265-params=lossless=1` These are added as ffmpeg output file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l enc-input -d 'Additional ffmpeg input encoder arg(s). E.g. `--enc-input r=1` These are added as ffmpeg input file options' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l min-vmaf -d 'Desired min VMAF score to deliver' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l min-xpsnr -d 'Desired min XPSNR score to deliver' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l max-encoded-percent -d 'Maximum desired encoded size percentage of the input size' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l min-crf -d 'Minimum (highest quality) crf value to try' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l max-crf -d 'Maximum (lowest quality) crf value to try' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l crf-increment -d 'Constant rate factor search increment precision' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l high-crf-means-hq -d 'Set the interpretation of crf so that higher crfs mean higher quality. For most encoders *lower* crfs mean higher quality' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l cache -d 'Enable sample-encode caching' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l samples -d 'Number of samples to use across the input video. Overrides --sample-every. More samples take longer but may provide a more accurate result' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l sample-every -d 'Calculate number of samples by dividing the input duration by this value. So "12m" would mean with an input 25-36 minutes long, 3 samples would be used. More samples take longer but may provide a more accurate result' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l min-samples -d 'Minimum number of samples. So at least this many samples will be used' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l sample-duration -d 'Duration of each sample' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l temp-dir -d 'Directory to store temporary sample data in. Defaults to the current working directory' -r -f -a "(__fish_complete_directories)"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l and-vmaf -d 'Set to calculate vmaf when it would otherwise not be, e.g. when calculating xpsnr. So using this allows both vmaf & xpsnr to be calculated at the same time' -r -f -a "true\t''
false\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l vmaf -d 'Additional vmaf arg(s). E.g. --vmaf n_threads=8 --vmaf n_subsample=4' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l vmaf-scale -d 'Video resolution scale to use in VMAF analysis. If set, video streams will be bicubic scaled to this during VMAF analysis. `auto` (default) automatically sets based on the model and input video resolution. `none` disables any scaling. `WxH` format may be used to specify custom scaling, e.g. `1920x1080`' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l vmaf-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l reference-vfilter -d 'Ffmpeg video filter applied to the VMAF/XPSNR reference before analysis. E.g. --reference-vfilter "scale=1280:-1,fps=24"' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l xpsnr-fps -d 'Frame rate override used to analyse both reference & distorted videos. Maps to ffmpeg `-r` input arg' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l xpsnr-pix-format -d 'Pixel format used in xpsnr analysis only. By default this is inferred from sources' -r -f -a "yuv420p\t''
yuv420p10le\t''
yuv422p10le\t''
yuv444p10le\t''"
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -s o -l output -d 'Output file, by default the same as input with `.av1` before the extension' -r -F
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l acodec -d 'Set the output ffmpeg audio codec. By default \'copy\' is used. Otherwise, if re-encoding is necessary, \'libopus\' is default' -r
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l thorough -d 'Keep searching until a crf is found no more than min_vmaf+0.05 or all possibilities have been attempted'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l keep -d 'Keep temporary files after exiting'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -s v -l verbose -d 'Increase logging verbosity'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -s q -l quiet -d 'Decrease logging verbosity'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l downmix-to-stereo -d 'Downmix input audio streams to stereo if input streams use greater than 3 channels'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l video-only -d 'Only process the main video stream, drop all other streams'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -l overwrite-input -d 'By default input files will not be overwritten to prevent accidental data loss. Setting this option overrides that allowing input overwrites'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand auto-encode" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand print-completions" -s h -l help -d 'Print help'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "sample-encode" -d 'Encode & analyse input samples to predict how a full encode would go. This is much quicker than a full encode/vmaf run.'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "vmaf" -d 'Full VMAF score calculation, distorted file vs reference file. Works with videos and images.'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "xpsnr" -d 'Full XPSNR score calculation, distorted file vs reference file. Works with videos and images.'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "encode" -d 'Invoke ffmpeg to encode a video or image'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "crf-search" -d 'Interpolated binary search using sample-encode to find the best crf value delivering min-vmaf & max-encoded-percent.'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "auto-encode" -d 'Automatically determine the best crf to deliver the min-vmaf and use it to encode a video or image.'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "print-completions" -d 'Print shell completions'
complete -c ab-av1 -n "__fish_ab_av1_using_subcommand help; and not __fish_seen_subcommand_from sample-encode vmaf xpsnr encode crf-search auto-encode print-completions help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
