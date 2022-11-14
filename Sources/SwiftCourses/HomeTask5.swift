//
//  File.swift
//
//
//  Created by George on 14.11.22.
//

import Foundation

public class HomeTask5: HometaskBase {
  typealias Group = [String: Int]

  public override func tasks() -> HometaskBase.TaskList {
    return [
      task1, task2, task3, task4, task5,
    ]
  }

  func task1() -> TaskResult {
    var result: TaskResult = []
    let items: [Int] = Array(repeating: 0, count: 10).map { _ in random() }

    var sorted = items.sorted()

    sorted.insert(99, at: 2)
    sorted.remove(at: 8)

    result.append("Сгенерированный массив чисел: \(items)")
    result.append(
      "Отсортирован массив, добавлено число 99 на 3-ю позицию, затем удален 9 элемент: \(sorted)")

    let products = ["банан", "апельсин", "кокос", "свекла", "банан", "капуста", "кокос", "банан"]

    result.append("Список продуктов: \(products)")
    result.append("Список уникальных продуктов: \(Set(products))")

    var group: Group = [
      "Сергей": 4,
      "Николай": 2,
      "Александр": 1,
    ]

    let groupUpdate: Group = [
      "Николай": 1,
      "Евгений": 2,
      "Сергей": -1,
    ]

    result.append("Изначальная группа: \(sortedGroupString(group: group))")

    groupUpdate.forEach { (key: String, value: Int) in
      let namesCount = group[key] ?? 0
      group[key] = namesCount + value
    }

    result.append("Обновленная группа: \(sortedGroupString(group: group))")

    return result
  }

  func task2() -> TaskResult {
    var result: TaskResult = []

    let deposit: Float = 500_000
    let years = 5
    let rate: Float = 0.11

    var depositByYears: [Float] = []

    for _ in 1...years {
      let lastYearDeposit = depositByYears.last ?? deposit
      let newYearDeposit = lastYearDeposit + lastYearDeposit * rate

      depositByYears.append(newYearDeposit)
    }

    let lastYearDeposit = depositByYears.last ?? deposit
    let profit = lastYearDeposit - deposit

    result.append(
      "Сумма вклада через \(years) лет увеличится на \(profit) и составит \(lastYearDeposit)")

    return result
  }

  func task3() -> TaskResult {
    let base = 2
    let power = 4
    let result = myPow(base: base, power: power)

    return [
      "\(base) в \(power) степени равно \(result)"
    ]
  }

  func task4() -> TaskResult {
    let items: [Int] = Array(repeating: 0, count: 10).map { _ in random() }
    let evenItems = items.filter { item in isEven(number: item) }

    var nonEvenItems: [Int] = []
    for item in items {
      if isEven(number: item) {
        continue
      }
      nonEvenItems.append(item)
    }

    return [
      "Сгенерирован массив: \(items)",
      "Четные числа: \(evenItems)",
      "Нечетные числа: \(nonEvenItems)",
    ]
  }

  func task5() -> TaskResult {
    var result = ""

    for iteration in 1...10 {
      let number = random()
      if number == 5 {
        result = "Что бы выпало число 5 понадобилось \(iteration) итерации"
        break
      }

      result = "Итерация \(iteration), число 5 не выпало"
    }

    return [result]
  }

  private func isEven(number: Int) -> Bool {
    return number % 2 == 0
  }

  private func myPow(base: Int, power: Int) -> Double {
    var result: Double = 1

    if power == 0 {
      return result
    }

    for _ in 1...abs(power) {
      result = result * Double(base)
    }

    if power < 0 {
      result = 1 / result
    }

    return result

  }

  private func random() -> Int {
    return Int.random(in: 1...10)
  }

  private func sortedGroupString(group: Group) -> String {
    let seq = group.sorted(by: { $0.key < $1.key })
    var result: [String] = []
    for item in seq {
      result.append("'\(item.key)': \(item.value)")
    }

    return result.joined(separator: ", ")
  }
}
