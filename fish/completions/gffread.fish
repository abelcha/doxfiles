# Auto-generated with h2o

complete -c gffread -s i -d 'discard transcripts having an intron larger than <maxintron>'
complete -c gffread -s l -d 'discard transcripts shorter than <minlen> bases'
complete -c gffread -s r -d 'only show transcripts overlapping coordinate range <start>..<end> (on chromosome/contig <chr>, strand <strand> if provided)'
complete -c gffread -s R -d 'for -r option, discard all transcripts that are not fully contained within the given range'
complete -c gffread -s U -d 'discard single-exon transcripts'
complete -c gffread -s C -d 'coding only: discard mRNAs that have no CDS features'
complete -c gffread -l nc -d 'non-coding only: discard mRNAs that have CDS features'
complete -c gffread -l ignore-locus -d 'discard locus features and attributes found in the input'
complete -c gffread -s A -d 'use the description field from <seq_info.fsize> and add it as the value for a \'descr\' attribute to the GFF record'
complete -c gffread -s s -d '<seq_info.fsize> is a tab-delimited file providing this info for each of the mapped sequences: <seq-name> <seq-length> <seq-description> (useful for -A option with mRNA/EST/protein mappings)'
complete -c gffread -l sort-alpha -d 'chromosomes (reference sequences) are sorted alphabetically'
complete -c gffread -l sort-by -d 'sort the reference sequences by the order in which their names are given in the <refseq.lst> file'
complete -c gffread -s F -d 'preserve all GFF attributes (for non-exon features)'
complete -c gffread -l keep-exon-attrs -d 'for -F option, do not attempt to reduce redundant exon/CDS attributes'
complete -c gffread -s G -d 'do not keep exon attributes, move them to the transcript feature (for GFF3 output)'
complete -c gffread -l keep-genes -d 'in transcript-only mode (default), also preserve gene records'
complete -c gffread -l keep-comments -d 'for GFF3 input/output, try to preserve comments'
complete -c gffread -s O -d 'process other non-transcript GFF records (by default non-transcript records are ignored)'
complete -c gffread -s V -d 'discard any mRNAs with CDS having in-frame stop codons (requires -g)'
complete -c gffread -s H -d 'for -V option, check and adjust the starting CDS phase if the original phase leads to a translation with an in-frame stop codon'
complete -c gffread -s B -d 'for -V option, single-exon transcripts are also checked on the opposite strand (requires -g)'
complete -c gffread -s P -d 'add transcript level GFF attributes about the coding status of each transcript, including partialness or in-frame stop codons (requires -g)'
complete -c gffread -l add-hasCDS -d 'add a "hasCDS" attribute with value "true" for transcripts that have CDS features'
complete -c gffread -l adj-stop -d 'stop codon adjustment: enables -P and performs automatic adjustment of the CDS stop coordinate if premature or downstream'
complete -c gffread -s N -d 'discard multi-exon mRNAs that have any intron with a non-canonical splice site consensus (i.e. not GT-AG, GC-AG or AT-AC)'
complete -c gffread -s J -d 'discard any mRNAs that either lack initial START codon or the terminal STOP codon, or have an in-frame stop codon (i.e. only print mRNAs with a complete CDS)'
complete -c gffread -l no-pseudo -d 'filter out records matching the \'pseudo\' keyword'
complete -c gffread -l in-bed -d 'input should be parsed as BED format (automatic if the input filename ends with .bed*)'
complete -c gffread -l in-tlf -d 'input GFF-like one-line-per-transcript format without exon/CDS features (see --tlf option below); automatic if the input filename ends with .tlf)'
complete -c gffread -l stream -d 'fast processing of input GFF/BED transcripts as they are received ((no sorting, exons must be grouped by transcript in the input data)'
complete -c gffread -s M -l merge -d 'cluster the input transcripts into loci, discarding "duplicated" transcripts (those with the same exact introns and fully contained or equal boundaries)'
complete -c gffread -s d -d 'for -M option, write duplication info to file <dupinfo>' -x
complete -c gffread -l cluster-only -d 'same as -M/--merge but without discarding any of the "duplicate" transcripts, only create "locus" features'
complete -c gffread -s K -d 'for -M option: also discard as redundant the shorter, fully contained transcripts (intron chains matching a part of the container)'
complete -c gffread -s Q -d 'for -M option, no longer require boundary containment when assessing redundancy (can be combined with -K); only introns have to match for multi-exon transcripts, and >=80% overlap for single-exon transcripts'
complete -c gffread -s Y -d 'for -M option, enforce -Q but also discard overlapping single-exon transcripts, even on the opposite strand (can be combined with -K)'
complete -c gffread -l force-exons -d 'make sure that the lowest level GFF features are considered "exon" features'
complete -c gffread -l gene2exon -d 'for single-line genes not parenting any transcripts, add an exon feature spanning the entire gene (treat it as a transcript)'
complete -c gffread -l t-adopt -d 'try to find a parent gene overlapping/containing a transcript that does not have any explicit gene Parent'
complete -c gffread -s D -d 'decode url encoded characters within attributes'
complete -c gffread -s Z -d 'merge very close exons into a single exon (when intron size<4)'
complete -c gffread -s g -d 'full path to a multi-fasta file with the genomic sequences for all input mappings, OR a directory with single-fasta files (one per genomic sequence, with file names matching sequence names)'
complete -c gffread -s w -d 'write a fasta file with spliced exons for each transcript'
complete -c gffread -l w-add -d 'for the -w option, extract additional <N> bases both upstream and downstream of the transcript boundaries' -x
complete -c gffread -s x -d 'write a fasta file with spliced CDS for each GFF transcript'
complete -c gffread -s y -d 'write a protein fasta file with the translation of CDS for each record'
complete -c gffread -s W -d 'for -w and -x options, write in the FASTA defline all the exon coordinates projected onto the spliced sequence;'
complete -c gffread -s S -d 'for -y option, use \'*\' instead of \'.\' as stop codon translation'
complete -c gffread -s L -d 'Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)'
complete -c gffread -s m -d 'is a name mapping table for converting reference sequence names, having this 2-column format: <original_ref_ID> <new_ref_ID>' -x
complete -c gffread -s t -d 'use <trackname> in the 2nd column of each GFF/GTF output line'
complete -c gffread -s o -d 'write the records into <outfile> instead of stdout'
complete -c gffread -s T -d 'main output will be GTF instead of GFF3'
complete -c gffread -l bed -d 'output records in BED format instead of default GFF3'
complete -c gffread -l tlf -d 'output "transcript line format" which is like GFF but exons, CDS features and related data are stored as GFF attributes in the transcript feature line, like this: exoncount=N;exons=<exons>;CDSphase=<N>;CDS=<CDScoords> <exons> is a comma-delimited list of exon_start-exon_end coordinates; <CDScoords> is CDS_start:CDS_end coordinates or a list like <exons>'
complete -c gffread -l table -d 'output a simple tab delimited format instead of GFF, with columns having the values of GFF attributes given in <attrlist>; special pseudo-attributes (prefixed by @) are recognized: @id, @geneid, @chr, @start, @end, @strand, @numexons, @exons, @cds, @covlen, @cdslen If any of -w/-y/-x FASTA output files are enabled, the same fields (excluding @id) are appended to the definition line of corresponding FASTA records'
complete -c gffread -s v -s E -d 'expose (warn about) duplicate transcript IDs and other potential problems with the given GFF/GTF records'
