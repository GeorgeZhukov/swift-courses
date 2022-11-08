//
//  File.swift
//
//
//  Created by George on 05.11.22.
//

import Foundation

public class HomeTask4: HometaskBase {
  enum Product: CaseIterable {
    case vegetables
    case meat
    case fruits
    case water
    case oil

    var label: String {
      switch self {
      case .oil:
        return "Масло"
      case .meat:
        return "Мясо"
      case .vegetables:
        return "Овощи"
      case .fruits:
        return "Фрукты"
      case .water:
        return "Вода"
      }
    }
  }
  enum RecipeError: Error {
    case dontHaveTheProduct
    case outOfFood(Product)
  }
  enum Recipe {
    typealias Weight = Float
    typealias Resources = [Product: Weight]
    typealias Count = Int

    case salad(Count)
    case soup(Count)
    case coctail(Count)
    case steak(Count)

    func buildArray(item: Resources, quantity: Count) -> [Resources] {
      return [Resources](repeating: item, count: quantity)
    }

    var label: String {
      switch self {
      case .steak(_):
        return "Стейк"
      case .coctail(_):
        return "Коктейль"
      case .soup(_):
        return "Суп"
      case .salad(_):
        return "Cалат"
      }
    }

    var ingridients: [Resources] {
      switch self {
      case .coctail(let count):
        return buildArray(
          item: [
            .fruits: 3.2,
            .water: 4.2,
          ], quantity: count)
      case .salad(let count):
        return buildArray(
          item: [
            .vegetables: 1.5,
            .oil: 0.3,
          ], quantity: count)
      case .soup(let count):
        return buildArray(
          item: [
            .meat: 2.5,
            .vegetables: 2,
            .water: 6,
          ], quantity: count)
      case .steak(let count):
        return buildArray(
          item: [
            .meat: 1.5,
            .oil: 0.5,
          ], quantity: count)
      }
    }
  }

  static let metersInKm: Double = 1_000

  public override func tasks() -> HometaskBase.TaskList {
    return [
      task1, task2, task3, task4, task5, task6, task7,
    ]
  }

  func task1() -> TaskResult {
    let distanceKilometers: Double = 40.0
    let time: Int = 600
    let speed = calcSpeed(distanceKilometers: distanceKilometers, time: time)

    return [
      "Дано: расстояние - \(distanceKilometers) км, время - \(time) сек",
      "Скорость равна ~ \(speed) м/с",
    ]
  }

  func task2() -> TaskResult {
    // Find result for
    // (a+4b)(a–3b)+a^2

    let a: Int = 2
    let b: Int = 3

    let result = (a + 4 * b) * (a - 3 * b) + a * a

    return [
      "Дано: a = \(a), b = \(b)",
      "(a+4b)(a–3b)+a^2 = \(result)",
    ]
  }

  func task3() -> TaskResult {
    let number: Int = Int.random(in: 1..<10)
    let isEven: Bool = (number % 2 == 0)
    let evenLabel = isEven ? "четное" : "нечетное"

    return [
      "Дано: number = \(number)",
      "Это число \(evenLabel)",
    ]
  }

  func task4() -> TaskResult {
    let left: Int = 111
    let right: Int = 222
    let variants: [String] = [
      [left, right].map { String($0) }.joined(),
      "\(left)\(right)",
    ]

    var buffer: [String] = ["Дано два числа: \(left) и \(right)"]
    for (index, mergeResult) in variants.enumerated() {
      if let result = Int(mergeResult) {
        buffer.append("Слияние #\(index + 1): \(result)")
      }
    }

    return buffer
  }

  func task5() -> TaskResult {
    let first: Int = 18
    let second: Float = 16.4
    let third: Double = 5.7

    let sum: Float = Float(Float(first) + second + Float(third))
    let multi: Int = Int(Double(first) * Double(second) * third)
    let mod: Double = Double(second.truncatingRemainder(dividingBy: Float(third)))

    return [
      "Дано: \(first), \(second), \(third)",
      "Сумма срезанная до Float: \(sum)",
      "Произведение срезаное до Int: \(multi)",
      "Остаток \(second) / \(third): \(mod)",
    ]

  }

  func task6() -> TaskResult {
    enum Condition: String {
      case emailAndPermission = "Если email верифицирован и доступы приняты"
      case age25RatingMore4and8 = "Если возраст больше 25 и рейтинг выше 4.8"
      case ageInRangeAndEmailOrPermission =
        "Если возраст в промежутке 20-30 лет не включительно. А также одно из двух: email верифицирован или доступы приняты"
      case lowRatingAndNoEmailOrPermission =
        "Одно из двух: email не верифицирован или доступы не приняты. А также рейтинг ниже 3.7"
      case nameLenAndRatingAndEmailOrPermission =
        "Если длина имени больше 5 символов и рейтинг выше 4.2. Или длина имени не более чем 5 символов и возраст меньше 30. А также помимо всего одно из двух: email верифицирован или доступы приняты"
    }
    let isEmailVerified: Bool = true
    let isPermissionsAccepted: Bool = false
    let age: Int = 29
    let name: String = "George"
    let rating: Double = 4.5

    var result: TaskResult = [
      "Дано:",
      "isEmailVerified = \(isEmailVerified), isPermissionsAccepted = \(isPermissionsAccepted)",
      "name = \(name), age = \(age), rating = \(rating)",
    ]

    var passedConditions: [Condition] = []

    if isEmailVerified && isPermissionsAccepted {
      passedConditions.append(.emailAndPermission)
    }

    if age > 25 && rating > 4.8 {
      passedConditions.append(.age25RatingMore4and8)
    }

    if (20..<30).contains(age) && (isEmailVerified || isPermissionsAccepted) {
      passedConditions.append(.ageInRangeAndEmailOrPermission)
    }

    if (!isEmailVerified || !isPermissionsAccepted) && rating < 3.7 {
      passedConditions.append(.lowRatingAndNoEmailOrPermission)
    }

    if (name.count > 5 && rating > 4.2)
      || (name.count <= 5 && age < 30) && (isEmailVerified || isPermissionsAccepted)
    {
      passedConditions.append(.nameLenAndRatingAndEmailOrPermission)
    }

    for condition in passedConditions {
      result.append("Сработало условие: \(condition.rawValue)")
    }

    return result
  }

  func task7() -> TaskResult {
    var resources: [Product: Recipe.Weight] = [:]
    var result: TaskResult = []

    for product in Product.allCases {
      resources[product] = 10
    }

    let orders: [Recipe] = [
      .salad(3),
      .soup(2),
      .coctail(1),
      .steak(3),
    ]

    do {
      for order in orders {
        result.append("Обрабатываем заказ: \(order.label)")

        resources = try cook(recipe: order, resources: resources)
        result.append("После приготовления, у вас осталось:")
        result.append(printResources(resources: resources).joined(separator: ", "))
      }
    } catch RecipeError.dontHaveTheProduct {
      result.append("Ошибка: не хватает необходимого продукта")
    } catch RecipeError.outOfFood(let product) {
      result.append("Ошибка: закончился следующий продукт: \(product.label)")
    } catch {
      result.append("Ошибка: неизвестная ошибка \(error)")
    }

    return result
  }

  private func calcSpeed(distanceKilometers: Double, time: Int) -> Double {
    let distanceInMeters = distanceKilometers * HomeTask4.metersInKm
    return distanceInMeters / Double(time)
  }

  private func printResources(resources: Recipe.Resources) -> [String] {

    return resources.map { (key: Product, value: Recipe.Weight) in
      "\(key.label): \(String(format: "%.2f", value))"
    }
  }

  private func cook(recipe: Recipe, resources: Recipe.Resources) throws -> Recipe.Resources {
    var newResources = resources

    for ingridients in recipe.ingridients {
      for (product, weight) in ingridients {
        guard let productWeight = newResources[product] else {
          throw RecipeError.dontHaveTheProduct
        }

        let newWeight = productWeight - weight

        guard newWeight > 0 else { throw RecipeError.outOfFood(product) }

        newResources[product] = newWeight
      }

    }

    return newResources
  }

}
