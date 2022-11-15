//
//  File.swift
//
//
//  Created by George on 15.11.22.
//

import Foundation

//Создайте словарь, который содержит результаты игр спортивной
//команды в чемпионате. Ключом словаря должно быть название
//команды соперника, а в качестве значения должен быть массив с
//результатами игр с этим соперником. Необходимо вывести на
//консоль результаты игр.
//Выглядеть это должно примерно следующим образом:
//Игра с Динамо - 3:5
//Игра с Динамо - 2:0
//Игра с Днипро - 1:3
//Игра с Шахтер - 0:0
//Игра с Шахтер - 2:3
//Игра с Шахтер - 4:1

public class HomeTask6: HometaskBase {
  typealias GameResult = [String: [[Int]]]

  public override func tasks() -> HometaskBase.TaskList {
    return [
      task1, task2, task3,
    ]
  }

  func task1() -> TaskResult {
    let results: GameResult = [
      "Динамо": [
        [3, 5],
        [2, 0],
        [1, 3],
      ],
      "Шахтер": [
        [0, 0],
        [2, 3],
        [4, 1],
      ],
    ]
    var taskResult: TaskResult = []

    for result in results {
      let team = result.key
      for match in result.value {
        guard let firstScore = match.first else { continue }
        guard let lastScore = match.last else { continue }

        let score = "\(firstScore):\(lastScore)"
        taskResult.append("Игра с \(team) - \(score)")
      }
    }

    return taskResult
  }

  func task2() -> TaskResult {
    guard let distance = birthdayDistance(day: 26, month: 04, year: 1993) else { return [] }
    guard let years = distance.year, let months = distance.month, let days = distance.day else {
      return []
    }

    return [
      "Со дня рождения прошло: \(years) лет, \(months) месяцев и \(days) дней"
    ]
  }

  func task3() -> TaskResult {
    let items = buildArray(range: 1...100)

    let resultItems = items.filter { item in
      !isEven(number: item) && !isDivByThree(number: item)
    }

    return [
      "Сгенерирован массив: \(items)",
      "Обработанный массив: \(resultItems)",
    ]
  }

  private func isEven(number: Int) -> Bool {
    return number % 2 == 0
  }

  private func isDivByThree(number: Int) -> Bool {
    return number % 3 == 0
  }

  private func buildArray(range: ClosedRange<Int>) -> [Int] {
    return Array(range)
  }

  private func birthdayDistance(day: Int, month: Int, year: Int) -> DateComponents? {
    let birthdayComponents = DateComponents(year: year, month: month, day: day)
    guard let birthday = Calendar.current.date(from: birthdayComponents) else { return nil }

    let today = Date()
    let distance = Calendar.current.dateComponents(
      [.year, .month, .day], from: birthday, to: today)

    return distance
  }
}
