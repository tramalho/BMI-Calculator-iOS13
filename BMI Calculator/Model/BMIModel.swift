//
//  BMIModel.swift
//  BMI Calculator
//
//  Created by Thiago Antonio Ramalho on 18/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

enum Type {
    case underweight
    case normal
    case overweight
}

struct BMIModel {
    let value: Float
    let type: Type
}
