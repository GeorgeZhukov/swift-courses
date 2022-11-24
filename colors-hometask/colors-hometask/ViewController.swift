//
//  ViewController.swift
//  colors-hometask
//
//  Created by George on 24.11.22.
//

import UIKit

class ViewController: UIViewController {
  typealias SliderPath = KeyPath<ViewController, Float>

  @IBOutlet weak var colorView: UIView!

  @IBOutlet weak var redSliderValueLabel: UILabel!
  @IBOutlet weak var greenSliderValueLabel: UILabel!
  @IBOutlet weak var blueSliderValueLabel: UILabel!

  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!

  @IBOutlet weak var useHexSwitch: UISwitch!

  var observations: [NSKeyValueObservation] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    animate {
      self.setShadow(self.colorView.layer)

      self.observeSliders()

      self.initSliders()
    }
  }


  @IBAction func sliderChanged(_ sender: UISlider) {
    animate {

      let value = CGFloat(sender.value)

      if let tintColor = sender.tintColor {
        sender.tintColor = tintColor.withAlphaComponent(value)
      }

      sender.setValue(value, forKey: "value")
    }
  }

  @IBAction func reverseClicked(_ sender: UIButton) {
    animate {
      self.allSliders.forEach { item in
        item.value = 1 - item.value
        self.sliderChanged(item)
      }
    }
  }

  @IBAction func useHexSwitchChanged(_ sender: UISwitch) {
    animate {
      self.allSliders.forEach { self.sliderChanged($0) }
    }
  }

  private var radix: Int {
    if useHexSwitch.isOn {
      return 16
    }

    return 10
  }

  private func convertValue(newValue: Float) -> String {
    let convertedValue = Int(newValue * 255)
    let sliderValueLabel = String(convertedValue, radix: self.radix, uppercase: true)

    return sliderValueLabel
  }

  private func animate(_ animations: @escaping () -> Void) {
    UIView.animate(withDuration: 0.4, delay: 0, options: .curveLinear, animations: animations) { completed in
      if completed {
        self.updateColor()
      }
    }
  }

  private func updateColor() {
    UIView.animate(withDuration: 0.6, delay: 0.1, options: .curveEaseOut) {
      self.colorView.backgroundColor = self.selectedColor
      self.colorView.layer.shadowColor = self.getShadowColor()
    }
  }

  private func buildObserve(_ keyPath: SliderPath, label: UILabel) -> NSKeyValueObservation  {
    return observe(keyPath, options: [.new]) { viewController, changed in
      guard let newValue = changed.newValue else { return }

      self.animate {
        let value = viewController.convertValue(newValue: newValue)
        label.setValue(value, forKey: "text")
      }

    }
  }

  private var selectedColor: UIColor {
    let colorString = allSliders.map { String($0.value) }.joined(separator: " ")

    let color = CIColor(string: colorString)
    return UIColor(ciColor: color)
  }

  private func observeSliders() {
    let observingObjects: [SliderPath: UILabel] = [
      \.redSlider.value: redSliderValueLabel,
      \.greenSlider.value: greenSliderValueLabel,
      \.blueSlider.value: blueSliderValueLabel,
    ]

    observations = observingObjects.map { keyPath, label in buildObserve(keyPath, label: label) }
  }

  func initSliders() {
    let red = UIColor(red: 1, green: 0, blue: 0, alpha: 0)
    let green = UIColor(red: 0, green: 1, blue: 0, alpha: 0)
    let blue = UIColor(red: 0, green: 0, blue: 1, alpha: 0)

    let colors = [red, green, blue]
    let sliderColors = zip(allSliders, colors)

    let slidersWithColors: [UISlider: UIColor] = Dictionary(uniqueKeysWithValues: sliderColors)

    animate {
      slidersWithColors.forEach { slider, color in
        slider.tintColor = color
        slider.value = 1

        self.sliderChanged(slider)
      }
    }
  }

  private func getShadowColor() -> CGColor {
    if traitCollection.userInterfaceStyle == .dark {
      return CGColor(red: 1, green: 1, blue: 1, alpha: 1)
    } else {
      return CGColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
  }


  private func setShadow(_ layer: CALayer) {
    layer.shadowRadius = 0.5
    layer.shadowOpacity = 1
    layer.shadowOffset = .init(width: 0, height: 0)
    layer.shadowColor = getShadowColor()
  }

  private var allSliders: [UISlider] {
    return [
      redSlider, greenSlider, blueSlider
    ]
  }
}

