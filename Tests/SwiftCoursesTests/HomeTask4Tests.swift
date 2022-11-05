//
//  hometask2.swift
//
//
//  Created by George on 03.11.22.
//

import XCTest

@testable import SwiftCourses

final class HomeTask4Tests: HomeTaskTests {
  override func getHomeTask() -> HometaskBase {
    return HomeTask4()
  }

  func testTask1SpeedCalculation() throws {
    let lines = [
      "→ Дано: расстояние - 40.0 км, время - 600 сек",
      "→ Скорость равна ~ 66.66666666666667 м/с",
    ]
    for line in lines {
      assertContains(line: line)
    }
  }

  func testTask2CalcExpression() throws {
    let lines = [
      "→ Дано: a = 2, b = 3",
      "→ (a+4b)(a–3b)+a^2 = -94",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }

  func testTask3NumberEven() throws {
    let pattern = "Дано: number = (\\d)"
    let regex = try! NSRegularExpression(pattern: pattern)
    let match = regex.firstMatch(
      in: self.output, range: .init(location: 0, length: self.output.count))

    XCTAssertNotNil(match)
  }

  func testTask3NumberEvenLabel() throws {
    let evenNumbers = [2, 4, 6, 8]
    let oddNumbers = [1, 3, 5, 7, 9]

    for number in evenNumbers {
      if self.output.contains("Дано: number = \(number)") {
        return assertContains(line: "Это число четное")
      }
    }

    for number in oddNumbers {
      if self.output.contains("Дано: number = \(number)") {
        return assertContains(line: "Это число нечетное")
      }
    }
  }

  func testTask4MergeTwoNumbers() throws {
    let lines = [
      "Дано два числа: 111 и 222",
      "Слияние #1: 111222",
      "Слияние #2: 111222",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }

  func testTask5CalculationsAndTyping() throws {
    let lines = [
      "Дано: 18, 16.4, 5.7",
      "Сумма срезанная до Float: 40.100002",
      "Произведение срезаное до Int: 1682",
      "Остаток 16.4 / 5.7: 5.0",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }

  func testTask6Conditions() throws {
    let lines = [
      "isEmailVerified = true, isPermissionsAccepted = false",
      "name = George, age = 29, rating = 4.5",
      "Если возраст в промежутке 20-30 лет не включительно. А также одно из двух: email верифицирован или доступы приняты",
      "Если длина имени больше 5 символов и рейтинг выше 4.2. Или длина имени не более чем 5 символов и возраст меньше 30. А также помимо всего одно из двух: email верифицирован или доступы приняты",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }

  func testTask7Cooking() throws {
    let lines = [
      "Обрабатываем заказ: Cалат",
      "После приготовления, у вас осталось:",
      "Вода: 10.00",
      "Масло: 9.10",
      "Фрукты: 10.00",
      "Овощи: 5.50",
      "Мясо: 10.00",
      "Обрабатываем заказ: Суп",
      "Ошибка: закончился следующий продукт: Вода",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }

}
