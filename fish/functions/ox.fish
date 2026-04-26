function ox --wraps=oxlint
    oxlint --type-aware --type-check --quiet --fix-dangerously --fix-suggestions --fix (git ls-files )
end
