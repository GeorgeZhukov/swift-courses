//
//  File.swift
//  
//
//  Created by George on 03.11.22.
//

import Foundation
public struct hometask1 {
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

    func task1() -> String {
        let firstString: String = "I can"
        let secondString: String = "code"

        return "\(firstString) \(secondString)!"
    }

    func task2() -> String {
        let myAge: Int = 29
        let myAgeInTenYears: Int = myAge + 10
        let daysInYear: Float = 365.25
        let daysPassed: Float = daysInYear * Float(myAgeInTenYears)

        return "Мой возраст \(myAge) лет. Через 10 лет, мне будет \(myAgeInTenYears) лет, с момента моего рождения пройдет \(daysPassed) дней."
    }

    func task3() -> String {
        let cathetusAB: Float = 8.0
        let cathetusCB: Float = 6.0
        let hypotenuseCA: Float = sqrt(pow(cathetusAB, 2) + pow(cathetusCB, 2))


        return "Катеты: AB = \(cathetusAB), CB = \(cathetusCB), Вычесленная гипотинуза: CA = \(hypotenuseCA)"
    }


}
