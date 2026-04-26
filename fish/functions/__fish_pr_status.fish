function __fish_pr_status
    # Cache for 10 minutes to avoid slowing prompt
    type -q bkt
    and set -l cached bkt --cache-dir --stale=10mn --
    or set -l cached ""

    $cached gh pr status --json title,state,statusCheckRollup,reviewDecision,url 2>/dev/null | begin
        read -lz raw
        if test -z "$raw"
            return
        end

        # Parse JSON and build indicator
        echo $raw | fish -c '
            set -l data (cat -)
            set -l failed 0
            set -l pending 0
            set -l review_requested 0
            set -l draft 0
            set -l total 0

            # Extract pullRequests array using string matching
            set -l prs (echo $data | string match -rg \'"\\"pullRequests\\"":\\s*\\[(.*?)\\]\' | string split \'},\\{"\')

            for pr in $prs
                string match -qr \'\\"state\\":\\"\\"(OPEN|DRAFT)\\"\\\\"\' $pr
                or continue

                set -l pr_state (string match -r \'\\"state\\":\\"\\"(\\w+)\\"\\\\"\' $pr)[2]
                test "$pr_state" = "DRAFT"; and set draft (math $draft + 1); and continue
                set total (math $total + 1)

                # Check review decision
                if string match -qr \'\\"reviewDecision\\":\\"\\"REVIEW_REQUIRED\\"\\\\"\' $pr
                    set review_requested (math $review_requested + 1)
                end

                # Check CI status
                set -l conclusions (string match -ar \'\\"conclusion\\":\\"\\"(\w+)\\"\\\\"\' $pr)
                if contains -- FAILURE $conclusions; or contains -- TIMED_OUT $conclusions; or contains -- CANCELLED $conclusions
                    set failed (math $failed + 1)
                else if contains -- PENDING $conclusions; or contains -- QUEUED $conclusions; or contains -- IN_PROGRESS $conclusions; or contains -- null $conclusions
                    set pending (math $pending + 1)
                end
            end

            # Output: failed|pending|review_requested|draft|total
            echo "$failed|$pending|$review_requested|$draft|$total"
        '
    end
end
