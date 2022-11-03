#!/bin/bash

swift-format lint  --recursive --strict --parallel /root/app && echo "Linting passed"
/root/SwiftCoursesPackageTests