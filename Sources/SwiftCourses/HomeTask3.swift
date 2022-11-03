//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import Foundation

public class HomeTask3: HometaskBase {
  enum EmergencyLevel {
    case levelA
    case levelB
    case levelC
  }

  enum CalculationType {
    case sum(Float, Float)
    case diff(Float, Float)
    case multiply(Float, Float)
    case div(Float, Float)
  }

  public override func tasks() -> [() -> String] {
    return [task1, task2, task3, task4]
  }

  func task1() -> String {
    let twoProducts = 2
    let twelveProducts = 12
    let twentyOneProducts = 21
    let thirdyFiveProducts = 35

    let allProducts = [twoProducts, twelveProducts, twentyOneProducts, thirdyFiveProducts]

    let result: [String] = allProducts.map { productsQuantity in
      let pricePerProduct = pricePerProduct(quantity: productsQuantity)
      let totalPrice = pricePerProduct * Float(productsQuantity)
      return
        "\n\tЗа \(productsQuantity) товаров, цена товара будет равна \(pricePerProduct), полная цена будет равна: \(totalPrice)"
    }

    return result.joined(separator: "\n")
  }

  func task2() -> String {
    var birthday = DateComponents()

    birthday.year = 1993
    birthday.month = 4
    birthday.day = 26

    let quarter = myQuarter(date: birthday)

    return "Квартал в котором родился: \(quarter)"
  }

  func task3() -> String {
    let levels: [EmergencyLevel] = [.C, .A, .B]
    return "\n"
      + levels.map { level in
        "Emergency Level \(level): \n\t" + self.emergencyInfo(level: level)
      }.joined(separator: "\n")
  }

  func task4() -> String {
    let first: Float = 9.0
    let second: Float = 3.0

    let result = [
      CalculationType.sum(first, second),
      CalculationType.diff(first, second),
      CalculationType.multiply(first, second),
      CalculationType.div(first, second),
    ]
    return result.map { operation in
      if let result = self.calculate(operation: operation) {
        return "\(operation): \(result)"
      } else {
        return "\(operation): error"
      }

    }.joined(separator: "\n")
  }

  private func calculate(operation: CalculationType) -> Float? {
    switch operation {
    case .sum(let a, let b):
      return a + b
    case .diff(let a, let b):
      return a - b
    case .multiply(let a, let b):
      return a * b
    case .div(let a, let b):
      if b == 0 {
        print("Divison by 0 error")
        return nil
      }
      return a / b

    }
  }

  private func pricePerProduct(quantity: Int) -> Float {
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

  private func myQuarter(date: DateComponents) -> Int {
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

  private func emergencyInfo(level: EmergencyLevel) -> String {
    var buffer: [String] = []

    switch level {
    case .levelA:
      buffer.append("Выключить все электрические приборы")
      fallthrough
    case .levelB:
      buffer.append("Закрыть входные двери и окна")
      fallthrough
    case .levelC:
      buffer.append("Соблюдать спокойствие")
    }
    return buffer.joined(separator: "\n\t")

  }
}
