function parquet-diff --argument f1 f2
    set -l rand (random)
    parquet-tools inspect $f1 >/tmp/$rand-$f1
    parquet-tools inspect $f2 >/tmp/$rand-$f2
    difft /tmp/$rand-$f1 /tmp/$rand-$f2 --color always | bat
end
