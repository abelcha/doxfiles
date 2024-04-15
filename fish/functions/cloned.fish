function cloned -a uri
    set -l cmd (deno eval 'await import("npm:git-url-parse").then(x => x.default(location.href)).then(e => [e.full_name, e.filepath].join(" "))' -p --unstable-sloppy-imports --location $uri)
    set -l fullcmd "gh download $cmd"
    gum confirm "$fullcmd" && eval $fullcmd
end
