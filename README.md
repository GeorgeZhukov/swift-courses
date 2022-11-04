[![CircleCI](https://dl.circleci.com/status-badge/img/gh/GeorgeZhukov/swift-courses/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/GeorgeZhukov/swift-courses/tree/main)


# SwiftCourses


## List of hometasks:
  1. Hometask 1 - First swift program, basic calculation, working with types and math functions.
      - [x] I can code
      - [x] My age
      - [x] Triangle calculactions
  1. Hometask 2 - Simple arithmetic: sum, remainder, division
      - [] Sum
      - [] Div and Mod
      - [] Mod
  1. Hometask 3 - Working with switch and enum
      - [] Product pricing
      - [] Birthday quarter
      - [] Emergency Levels
      - [] Calculation Enum



## Run

Command to run example:
```bash
swift run
```


Example output:
```bash
❯ swift run
Building for debugging...
[7/7] Compiling SwiftCourses HomeTask3.swift
Build complete! (0.44s)
Coming soon...
```


## Tests

To run tests:
```bash
swift test
```


Output example:
```bash
❯ swift test
Building for debugging...
[6/6] Emitting module SwiftCoursesTests
Build complete! (0.54s)
Test Suite 'All tests' started at 2022-11-04 21:26:25.980
Test Suite 'SwiftCoursesPackageTests.xctest' started at 2022-11-04 21:26:25.981

```


## Docker

Next command build image and run tests (with linter checks):
```bash
docker build -t georgezhukov/swift-courses:dev .
docker run -it georgezhukov/swift-courses:dev bash entrypoint.sh

```

<details>
  <summary>Docker output</summary>
Coming soon....
</details>


## License

Of course MIT, feel free to use it)
