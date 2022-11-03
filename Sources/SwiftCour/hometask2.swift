//
//  File.swift
//  
//
//  Created by George on 03.11.22.
//

import Foundation
public struct hometask2 {
    private var lines: String?

     public init() {
         let tasks = [task1, task2, task3].enumerated()
         let lines = tasks.map { index, taskFunction in
             let taskNo: String = "[#\(index + 1)] →"
             let taskResult: String = taskFunction()


             return "\(taskNo) \(taskResult)"
         }

         self.lines = lines.joined(separator: "\n")
     }
    
    public func output() -> String {
        guard let lines = self.lines else { return "" }
        
        return lines
    }


     public func task1() -> String {
         let prop1: Float = 3.14
         let prop2: Float = 42.0
         let summa: Double = Double(prop1 + prop2)
         return "Сумма: \(summa)"
     }

     public func task2() -> String {
         let numberOne: Int = 10
         let numberTwo: Int = max(numberOne - 3, 1)

         let result = numberOne / numberTwo
         let remainder = numberOne % numberTwo

         return "При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)"
     }

     public func task3() -> String {
         let numberOne: Int = 10
         let numberTwo: Int = max(numberOne - 3, 1)
         let result = numberOne / numberTwo
         let remainder = numberOne % numberTwo
         return "Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberTwo)"

     }

 }
