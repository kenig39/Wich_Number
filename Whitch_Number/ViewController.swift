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
        button.addTarget(ViewController.self, action: #selector(checkNumbers), for: .touchUpInside)
        button.setTitle("Check", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.frame = CGRect(x: 0, y: 0, width: 70, height: 100)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.font = UIFont(name: "Text", size: 20)
        label.textColor = UIColor.black
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setting()
        
       
    }

    @objc func checkNumbers() {
        
    }
    
    
    func setting(){
        
        view.addSubview(insertNumber)
        insertNumber.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        insertNumber.heightAnchor.constraint(equalToConstant: 30).isActive = true
        insertNumber.widthAnchor.constraint(equalToConstant: 150).isActive = true
        insertNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(checkButton)
        checkButton.topAnchor.constraint(equalTo: insertNumber.bottomAnchor, constant: 20).isActive = true
        checkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(resultLabel)
        resultLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

}

