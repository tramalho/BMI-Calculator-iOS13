//
//  CalculatorBMI.swift
//  BMI Calculator
//
//  Created by Thiago Antonio Ramalho on 18/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBMI {
    
    private (set) var bmi: BMIModel?
    
    mutating func calculate(height: Float, weight: Float) {
        
        let value = weight / pow(height, 2)
        var type:Type = .overweight
        
        if value < 18.5 {
            type = .underweight
        } else if value < 24.9 {
            type = .normal
        }
        
        bmi = BMIModel(value: value, type: type)
    }
}
