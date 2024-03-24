//
//  ViewController.swift
//  Whitch_Number
//
//  Created by Alexander on 24.03.2024.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    let insertNumber: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insert Number"
        textField.translatesAutoresizingMaskIntoConstraints = false
       return textField
    }()
    
    let checkButton: UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 70, height: 100)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        checkButton.addTarget(self, action: #selector(checkNumbers), for: .touchUpInside)
       
    }

    @objc func checkNumbers() {
        
    }
    
    
    func setting(){
        view.addSubview(insertNumber)
        view.addSubview(checkButton)
        view.addSubview(resultLabel)
        
    }

}

