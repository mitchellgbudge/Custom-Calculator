//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Mitchell Budge on 12/3/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    // MARK: - Properties and outlets
    
    @IBOutlet weak var outputLabel: UILabel!
    var calculator: Calculator?
    
    // MARK: - View lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator = Calculator()
    }
    
    // MARK: - Actions and methods
    
    @IBAction func operandTapped(_ sender: UIButton) {
        if let number = sender.titleLabel?.text {
            outputLabel.text = calculator?.chainNumber(number)
        }
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
        if let buttonOperator = sender.titleLabel?.text {
            calculator?.setOperator(buttonOperator)
        }
    }
    
    @IBAction func equalTapped(_ sender: UIButton) {
        if let answer = calculator?.calculate() {
            outputLabel.text = answer
            clear()
        }
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        clear()
        outputLabel.text = "0"
    }
    
    func clear() {
        calculator = nil
        calculator = Calculator()
    }

    

}
