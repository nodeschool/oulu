#!/usr/bin/env bash
#
# Test script for NodeSchool workshop solutions.

# Fail on first line that fails.
set -e

# elementary-electron
electron solutions/elementary-electron/app.js &
SERVER_PID=$!

# Run cleanup before exiting.
function before_exit {
    set +e
    echo "Cleaning up before test exits"

    # Kill the server if relevant.
    kill $SERVER_PID
}

trap before_exit EXIT

# javascripting
for file in solutions/javascripting/*
    do node "$file"
done

# learnyounode
node solutions/learnyounode/hello-world.js
node solutions/learnyounode/baby-steps.js 1 2 3
node solutions/learnyounode/my-first-io.js ./package.json
node solutions/learnyounode/my-first-async-io.js ./package.json
