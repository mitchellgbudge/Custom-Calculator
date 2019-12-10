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
    
    var calculator: Calculator?
    
    // MARK: - View lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator = Calculator()
    }
    
    // MARK: - Actions and methods
    
    
    
    func clear() {
        calculator = nil
        calculator = Calculator()
    }

    

}
