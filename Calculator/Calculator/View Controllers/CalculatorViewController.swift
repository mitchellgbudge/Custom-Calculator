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
    
    @IBOutlet weak var divideLabel: UIButton!
    @IBOutlet weak var multiplyLabel: UIButton!
    @IBOutlet weak var subtrackLabel: UIButton!
    @IBOutlet weak var addLabel: UIButton!
    @IBOutlet weak var equalsLabel: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    var calculator: Calculator?
    
    // MARK: - View lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator = Calculator()
        stylize()
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

    func stylize() {
        divideLabel.layer.cornerRadius = 50
        multiplyLabel.layer.cornerRadius = 50
        subtrackLabel.layer.cornerRadius = 50
        addLabel.layer.cornerRadius = 50
        equalsLabel.layer.cornerRadius = 50
    }

}
