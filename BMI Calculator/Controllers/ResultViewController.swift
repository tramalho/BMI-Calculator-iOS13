//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Thiago Antonio Ramalho on 18/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var result: BMIModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let value = result?.value ?? 0.0
        var message = "Wrong"
        var color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        switch result?.type {
        case .underweight:
            message = "EAT SOME MORE SNACKS!"
            color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        case .normal:
            message = "FIT AS A FIDDLE!"
            color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        default:
            message = "EAT LESS PIES!"
            color = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
        
        resultLabel.text = String(format: "%.1f", value)
        messageLabel.text = message
        
        self.view.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
