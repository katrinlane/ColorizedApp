//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Kate on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorizedView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redComponentNumber: UILabel!
    @IBOutlet var greenComponentNumber: UILabel!
    @IBOutlet var blueComponentNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 20
        setupLabels()
        colorizedView.layer.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        redComponentNumber.text = String(format: "%.2f", redSlider.value)
        colorizedView.layer.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func greenSliderAction() {
        greenComponentNumber.text = String(format: "%.2f", greenSlider.value)
        colorizedView.layer.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func blueSliderAction() {
        blueComponentNumber.text = String(format: "%.2f", blueSlider.value)
        colorizedView.layer.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    // MARK: - Private Methods
    private func setupLabels() {
        redComponentNumber.text = String(format: "%.2f", redSlider.value)
        greenComponentNumber.text = String(format: "%.2f", greenSlider.value)
        blueComponentNumber.text = String(format: "%.2f", blueSlider.value)
    }
}

