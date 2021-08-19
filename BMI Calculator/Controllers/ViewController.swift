//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    private lazy var calculator: CalculatorBMI = {
       return CalculatorBMI()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLabel()
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        calculator.calculate(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult", let vc = segue.destination as? ResultViewController {
            vc.result = calculator.bmi
        }
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        setupLabel()
    }
    
    private func setupLabel() {
        heightLabel.text = "\(String(format: "%.1f", heightSlider.value))m"
        weightLabel.text = "\(String(format: "%.1f", weightSlider.value))Kg"
    }
}

