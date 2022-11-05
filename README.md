[![CircleCI](https://dl.circleci.com/status-badge/img/gh/GeorgeZhukov/swift-courses/tree/develop.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/GeorgeZhukov/swift-courses/tree/develop)


# SwiftCourses


## List of hometasks:
  1. Hometask 1 - First swift program, basic calculation, working with types and math functions.
      - [x] I can code
      - [x] My age
      - [x] Triangle calculactions
  1. Hometask 2 - Simple arithmetic: sum, remainder, division
      - [x] Sum
      - [x] Div and Mod
      - [x] Mod
  1. Hometask 3 - Working with switch and enum
      - [x] Product pricing
      - [x] Birthday quarter
      - [x] Emergency Levels
      - [x] Calculation Enum
  1. Hometask 4 - Types, caclulations and conditions
      - [x] Calc speed
      - [x] Solve math task
      - [x] Number even test
      - [x] Merge two numbers
      - [x] Calculations
      - [x] Conditions
      - [x] Coke



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
Task: Hometask #1
 [#1]
  → I can code!
 [#2]
  → Мой возраст 29 лет. Через 10 лет, мне будет 39 лет, с момента моего рождения пройдет 14244.75 дней.
 [#3]
  → Катеты: AB = 8.0, CB = 6.0, Вычесленная гипотинуза: CA = 10.0


Task: Hometask #2
 [#1]
  → Сумма: 45.13999938964844
 [#2]
  → При делении 10 на 7 результат равен 1, остаток равен 3
 [#3]
  → Результат деления 10 на 7 равен 1 3/7


Task: Hometask #3
 [#1]
  → За 2 товаров, цена товара будет равна 1000.0, полная цена будет равна: 2000.0
  → За 12 товаров, цена товара будет равна 800.0, полная цена будет равна: 9600.0
  → За 21 товаров, цена товара будет равна 600.0, полная цена будет равна: 12600.0
  → За 35 товаров, цена товара будет равна 600.0, полная цена будет равна: 21000.0
 [#2]
  → Квартал в котором родился: 2
 [#3]
  → Emergency levelC: Соблюдать спокойствие
  → Emergency levelA: Выключить все электрические приборы -> Закрыть входные двери и окна -> Соблюдать спокойствие
  → Emergency levelB: Закрыть входные двери и окна -> Соблюдать спокойствие
 [#4]
  → 9.0 - 3.0 = 6.0
  → 9.0 + 3.0 = 12.0
  → 9.0 / 3.0 = 3.0
  → 9.0 * 3.0 = 27.0
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
Test Suite 'HomeTask1Tests' started at 2022-11-04 21:26:25.981
Test Case '-[SwiftCoursesTests.HomeTask1Tests testTask1ICanCode]' started.
Test Case '-[SwiftCoursesTests.HomeTask1Tests testTask1ICanCode]' passed (0.001 seconds).
Test Case '-[SwiftCoursesTests.HomeTask1Tests testTask2AgeCalc]' started.
Test Case '-[SwiftCoursesTests.HomeTask1Tests testTask2AgeCalc]' passed (0.001 seconds).
Test Case '-[SwiftCoursesTests.HomeTask1Tests testTask3TriangleCalc]' started.
Test Case '-[SwiftCoursesTests.HomeTask1Tests testTask3TriangleCalc]' passed (0.000 seconds).
Test Suite 'HomeTask1Tests' passed at 2022-11-04 21:26:25.984.
	 Executed 3 tests, with 0 failures (0 unexpected) in 0.003 (0.003) seconds
Test Suite 'HomeTask2Tests' started at 2022-11-04 21:26:25.984
Test Case '-[SwiftCoursesTests.HomeTask2Tests testTask1Sum]' started.
Test Case '-[SwiftCoursesTests.HomeTask2Tests testTask1Sum]' passed (0.000 seconds).
Test Case '-[SwiftCoursesTests.HomeTask2Tests testTask2Mod]' started.
Test Case '-[SwiftCoursesTests.HomeTask2Tests testTask2Mod]' passed (0.000 seconds).
Test Case '-[SwiftCoursesTests.HomeTask2Tests testTask3Division]' started.
Test Case '-[SwiftCoursesTests.HomeTask2Tests testTask3Division]' passed (0.000 seconds).
Test Suite 'HomeTask2Tests' passed at 2022-11-04 21:26:25.985.
	 Executed 3 tests, with 0 failures (0 unexpected) in 0.001 (0.001) seconds
Test Suite 'HomeTask3Tests' started at 2022-11-04 21:26:25.985
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask1ProductPrices]' started.
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask1ProductPrices]' passed (0.000 seconds).
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask2BirthdayQuarter]' started.
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask2BirthdayQuarter]' passed (0.000 seconds).
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask3EmergencyLevels]' started.
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask3EmergencyLevels]' passed (0.000 seconds).
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask4Calculation]' started.
Test Case '-[SwiftCoursesTests.HomeTask3Tests testTask4Calculation]' passed (0.000 seconds).
Test Suite 'HomeTask3Tests' passed at 2022-11-04 21:26:25.986.
	 Executed 4 tests, with 0 failures (0 unexpected) in 0.001 (0.001) seconds
Test Suite 'mainTests' started at 2022-11-04 21:26:25.986
Test Case '-[SwiftCoursesTests.mainTests testMain]' started.
Test Case '-[SwiftCoursesTests.mainTests testMain]' passed (0.000 seconds).
Test Case '-[SwiftCoursesTests.mainTests testRendersHometask1]' started.
Test Case '-[SwiftCoursesTests.mainTests testRendersHometask1]' passed (0.000 seconds).
Test Suite 'mainTests' passed at 2022-11-04 21:26:25.986.
	 Executed 2 tests, with 0 failures (0 unexpected) in 0.000 (0.000) seconds
Test Suite 'SwiftCoursesPackageTests.xctest' passed at 2022-11-04 21:26:25.986.
	 Executed 12 tests, with 0 failures (0 unexpected) in 0.005 (0.005) seconds
Test Suite 'All tests' passed at 2022-11-04 21:26:25.986.
	 Executed 12 tests, with 0 failures (0 unexpected) in 0.005 (0.006) seconds
```


## Docker

Next command build image and run tests (with linter checks):
```bash
docker build -t georgezhukov/swift-courses:dev .
docker run -it georgezhukov/swift-courses:dev bash entrypoint.sh

```

<details>
  <summary>Docker output</summary>

  ```bash
Linting passed
Test Suite 'All tests' started at 2022-11-04 19:39:19.255
Test Suite 'root.xctest' started at 2022-11-04 19:39:19.257
Test Suite 'HomeTask1Tests' started at 2022-11-04 19:39:19.257
Test Case 'HomeTask1Tests.testTask1ICanCode' started at 2022-11-04 19:39:19.257
Test Case 'HomeTask1Tests.testTask1ICanCode' passed (0.001 seconds)
Test Case 'HomeTask1Tests.testTask2AgeCalc' started at 2022-11-04 19:39:19.258
Test Case 'HomeTask1Tests.testTask2AgeCalc' passed (0.001 seconds)
Test Case 'HomeTask1Tests.testTask3TriangleCalc' started at 2022-11-04 19:39:19.260
Test Case 'HomeTask1Tests.testTask3TriangleCalc' passed (0.0 seconds)
Test Suite 'HomeTask1Tests' passed at 2022-11-04 19:39:19.260
   Executed 3 tests, with 0 failures (0 unexpected) in 0.003 (0.003) seconds
Test Suite 'HomeTask2Tests' started at 2022-11-04 19:39:19.260
Test Case 'HomeTask2Tests.testTask1Sum' started at 2022-11-04 19:39:19.260
Test Case 'HomeTask2Tests.testTask1Sum' passed (0.0 seconds)
Test Case 'HomeTask2Tests.testTask2Mod' started at 2022-11-04 19:39:19.260
Test Case 'HomeTask2Tests.testTask2Mod' passed (0.0 seconds)
Test Case 'HomeTask2Tests.testTask3Division' started at 2022-11-04 19:39:19.261
Test Case 'HomeTask2Tests.testTask3Division' passed (0.0 seconds)
Test Suite 'HomeTask2Tests' passed at 2022-11-04 19:39:19.261
   Executed 3 tests, with 0 failures (0 unexpected) in 0.001 (0.001) seconds
Test Suite 'HomeTask3Tests' started at 2022-11-04 19:39:19.261
Test Case 'HomeTask3Tests.testTask1ProductPrices' started at 2022-11-04 19:39:19.261
Test Case 'HomeTask3Tests.testTask1ProductPrices' passed (0.001 seconds)
Test Case 'HomeTask3Tests.testTask2BirthdayQuarter' started at 2022-11-04 19:39:19.262
Test Case 'HomeTask3Tests.testTask2BirthdayQuarter' passed (0.0 seconds)
Test Case 'HomeTask3Tests.testTask3EmergencyLevels' started at 2022-11-04 19:39:19.262
Test Case 'HomeTask3Tests.testTask3EmergencyLevels' passed (0.0 seconds)
Test Case 'HomeTask3Tests.testTask4Calculation' started at 2022-11-04 19:39:19.263
Test Case 'HomeTask3Tests.testTask4Calculation' passed (0.0 seconds)
Test Suite 'HomeTask3Tests' passed at 2022-11-04 19:39:19.263
   Executed 4 tests, with 0 failures (0 unexpected) in 0.002 (0.002) seconds
Test Suite 'mainTests' started at 2022-11-04 19:39:19.263
Test Case 'mainTests.testMain' started at 2022-11-04 19:39:19.263
Test Case 'mainTests.testMain' passed (0.0 seconds)
Test Case 'mainTests.testRendersHometask1' started at 2022-11-04 19:39:19.263
Test Case 'mainTests.testRendersHometask1' passed (0.0 seconds)
Test Suite 'mainTests' passed at 2022-11-04 19:39:19.264
   Executed 2 tests, with 0 failures (0 unexpected) in 0.001 (0.001) seconds
Test Suite 'root.xctest' passed at 2022-11-04 19:39:19.264
   Executed 12 tests, with 0 failures (0 unexpected) in 0.006 (0.006) seconds
Test Suite 'All tests' passed at 2022-11-04 19:39:19.264
   Executed 12 tests, with 0 failures (0 unexpected) in 0.006 (0.006) seconds
  ```
</details>


## License

Of course MIT, feel free to use it)
