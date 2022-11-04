//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import Foundation

public class HomeTask3: HometaskBase {
  enum EmergencyLevel: String {
    case levelA = "Выключить все электрические приборы"
    case levelB = "Закрыть входные двери и окна"
    case levelC = "Соблюдать спокойствие"

    var message: String {
      return self.rawValue
    }
  }

  enum CalculationType {
    typealias CalcType = Float

    case sum(CalcType, CalcType)
    case diff(CalcType, CalcType)
    case multiply(CalcType, CalcType)
    case div(CalcType, CalcType)

    var result: CalcType {
      switch self {
      case .sum(let left, let right):
        return left + right
      case .diff(let left, let right):
        return left - right
      case .multiply(let left, let right):
        return left * right
      case .div(let left, let right):
        return left / right
      }
    }

  }

  func pricePerProduct(quantity: Int) -> Float {
    switch quantity {
    case 0..<10:
      return 1000
    case 10..<20:
      return 800
    case 20...:
      return 600
    default:
      return -1
    }
  }

  func myQuarter(date: DateComponents) -> Int {
    switch date.month! {
    case 0...3:
      return 1
    case 4...6:
      return 2
    case 7...9:
      return 3
    case 10...12:
      return 4
    default:
      return -1
    }
  }

  func message(level: EmergencyLevel) -> String {
    var buffer: [EmergencyLevel] = []

    switch level {
    case .levelA:
      buffer.append(EmergencyLevel.levelA)
      fallthrough
    case .levelB:
      buffer.append(EmergencyLevel.levelB)
      fallthrough
    case .levelC:
      buffer.append(EmergencyLevel.levelC)
    }
    return buffer.map({ level in
      level.rawValue
    }).joined(separator: " -> ")
  }

  func task1() -> TaskResult {
    let productsQuantities = [2, 12, 21, 35]

    let result: [String] = productsQuantities.map { productsQuantity in

      let priceProduct = pricePerProduct(quantity: productsQuantity)
      let totalPrice = priceProduct * Float(productsQuantity)
      return
        "За \(productsQuantity) товаров, цена товара будет равна \(priceProduct), полная цена будет равна: \(totalPrice)"

    }

    return result
  }

  func task2() -> TaskResult {
    let birthday = DateComponents(year: 1993, month: 4, day: 26)

    let quarter = myQuarter(date: birthday)

    return ["Квартал в котором родился: \(quarter)"]
  }

  func task3() -> TaskResult {
    let levels: [EmergencyLevel] = [.levelC, .levelA, .levelB]

    let messages = levels.map { level in "Emergency \(level): " + self.message(level: level) }

    return messages
  }

  func task4() -> TaskResult {
    let left: CalculationType.CalcType = 9
    let right: CalculationType.CalcType = 3

    let operations: [String: CalculationType] = [
      "+": .sum(left, right),
      "-": .diff(left, right),
      "*": .multiply(left, right),
      "/": .div(left, right),
    ]

    var result: [String] = []

    for (operationLabel, operation) in operations {
      result.append("\(left) \(operationLabel) \(right) = \(operation.result)")
    }
    return result
  }

  override public func tasks() -> TaskList {
    return [task1, task2, task3, task4]
  }

}
