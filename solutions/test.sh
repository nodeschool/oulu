#!/usr/bin/env bash
#
# Test script for NodeSchool workshop solutions.

# javascripting
for file in solutions/javascripting/*
    do node "$file"
done

# learnyounode
node solutions/learnyounode/hello-world.js
node solutions/learnyounode/baby-steps.js 1 2 3
node solutions/learnyounode/my-first-io.js ./package.json
node solutions/learnyounode/my-first-async-io.js ./package.json
