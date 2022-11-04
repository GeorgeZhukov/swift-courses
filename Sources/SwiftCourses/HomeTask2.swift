//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import Foundation

public class HomeTask2: HometaskBase {
  public override func tasks() -> TaskList {
    return [task1, task2, task3]
  }

  public func task1() -> TaskResult {
    let prop1: Float = 3.14
    let prop2: Float = 42.0
    let summa: Double = Double(prop1 + prop2)
    return ["Сумма: \(summa)"]
  }

  public func task2() -> TaskResult {
    let numberOne: Int = 10
    let numberTwo: Int = max(numberOne - 3, 1)

    let result = numberOne / numberTwo
    let remainder = numberOne % numberTwo

    return
      [
        "При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)"
      ]
  }

  public func task3() -> TaskResult {
    let numberOne: Int = 10
    let numberTwo: Int = max(numberOne - 3, 1)
    let result = numberOne / numberTwo
    let remainder = numberOne % numberTwo
    return
      [
        "Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberTwo)"
      ]

  }

}
