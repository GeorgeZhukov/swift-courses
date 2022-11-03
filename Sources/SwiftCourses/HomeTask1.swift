//
//  File.swift
//  
//
//  Created by George on 03.11.22.
//

import Foundation
public class HomeTask1: HometaskBase {
    public override func tasks() -> Array<() -> String> {
        return [task1, task2, task3]
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
