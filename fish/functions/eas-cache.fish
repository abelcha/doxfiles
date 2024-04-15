function eas-cache --wraps eas
    env EAS_LOCAL_BUILD_WORKINGDIR=/tmp/eas-build EAS_LOCAL_BUILD_SKIP_CLEANUP=1 EAS_LOCAL_BUILD_ARTIFACTS_DIR=/tmp/eas-artifacts eas $argv
end
