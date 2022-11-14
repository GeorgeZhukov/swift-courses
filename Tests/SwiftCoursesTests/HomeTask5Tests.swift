import XCTest

@testable import SwiftCourses

final class HomeTask5Tests: HomeTaskTests {
  override func getHomeTask() -> HometaskBase {
    return HomeTask5()
  }

  func testTask1WorkingWithArray() throws {
    let patterns = [
      "Сгенерированный массив чисел: \\[[\\d, ]{10,}\\]",
      "Отсортирован массив, добавлено число 99 на 3-ю позицию, затем удален 9 элемент: \\[[\\d, ]{10,}\\]",
      "Список продуктов: \\[\"банан\", \"апельсин\", \"кокос\", \"свекла\", \"банан\", \"капуста\", \"кокос\", \"банан\"\\]",
      "Список уникальных продуктов: \\[.+\\]",
      "Изначальная группа: 'Александр': 1, 'Николай': 2, 'Сергей': 4",
      "Обновленная группа: 'Александр': 1, 'Евгений': 2, 'Николай': 3, 'Сергей': 3",
    ]

    for pattern in patterns {
      let match = assertPattern(pattern: pattern)

      if match == nil {
        print("Output doesn't contains pattern:\nPattern: \(pattern)\nOutput: \(self.output)\n")
      }
      XCTAssertNotNil(match)
    }
  }

  func testTask2BankDeposit() throws {
    assertContains(line: "Сумма вклада через 5 лет увеличится на 342529.06 и составит 842529.06")
  }

  func testTask3NumberPow() throws {
    assertContains(line: "2 в 4 степени равно 16.0")
  }

  func testTask4EvenOddNumbers() throws {
    let patterns = [
      "Сгенерирован массив: \\[[\\d, ]{10,}\\]",
      "Четные числа: \\[[\\d, ]{0,}\\]",
      "Нечетные числа: \\[[\\d, ]{0,}\\]",
    ]
    for pattern in patterns {
      let match = assertPattern(pattern: pattern)

      if match == nil {
        print("Output doesn't contains pattern:\nPattern: \(pattern)\nOutput: \(self.output)\n")
      }
      XCTAssertNotNil(match)
    }
  }

  func testTask5RandomFive() throws {
    let pattern1 = "Что бы выпало число 5 понадобилось \\d итерации"
    let pattern2 = "Итерация 10, число 5 не выпало"

    var match = assertPattern(pattern: pattern1)
    if match == nil {
      match = assertPattern(pattern: pattern2)
    }
    XCTAssertNotNil(match)
  }

  private func assertPattern(pattern: String) -> NSTextCheckingResult? {
    let regex = try! NSRegularExpression(pattern: pattern)
    let match = regex.firstMatch(
      in: self.output, range: .init(location: 0, length: self.output.count))

    return match
  }

}
