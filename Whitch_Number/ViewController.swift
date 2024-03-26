//
//  ViewController.swift
//  Whitch_Number
//
//  Created by Alexander on 24.03.2024.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var number: Int = 0
    
    var round: Int = 0
    
    var points: Int = 0
    
    let insertNumber: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insert Number"
        textField.translatesAutoresizingMaskIntoConstraints = false
       return textField
    }()
    
    let checkButton: UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Text", size: 20)
        label.textColor = UIColor.black
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let resultNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Text", size: 20)
        label.text = "Результат: "
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let roundLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Text", size: 20)
        label.textColor = UIColor.black
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkButton.addTarget(self, action: #selector(checkNumbers), for: .touchUpInside)
        
        setting()
        
       
    }

    @objc func checkNumbers() {
        if  round == 0 {
             number = Int.random(in: 1...50)
            self.resultLabel.text = String(number)
            self.round = 1
        }
        else {
            guard let numberTextField = Int(self.insertNumber.text ?? "") else {
                return
            }
            if numberTextField > self.number {
                self.points += 50 - numberTextField + self.number
            } else if
                numberTextField < self.number {
                self.points += 50 - self.number + numberTextField
            }
            else {
                self.points += 50
            }
            if self.round == 5 {
                
                let alert = UIAlertController(title: "Игра Окончена",
                                              message: "Вы набрани \(self.points) очков ",
                                              preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Начать заного",
                                              style: .default))
                self.present(alert, animated: true)
                self.round = 1
                self.points = 0
            }
            else {
                self.round += 1
            }
            self.number = Int.random(in: 1...50)
            
            self.resultLabel.text = String(self.number)
            
            self.roundLabel.text = String(self.round)
        }
    }
    
    
    func setting(){
        
        view.addSubview(insertNumber)
        insertNumber.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        insertNumber.heightAnchor.constraint(equalToConstant: 30).isActive = true
        insertNumber.widthAnchor.constraint(equalToConstant: 150).isActive = true
        insertNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(checkButton)
        checkButton.topAnchor.constraint(equalTo: insertNumber.bottomAnchor, constant: 20).isActive = true
        checkButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        checkButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        checkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(resultLabel)
        resultLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(resultNameLabel)
        resultNameLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        resultNameLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 90 ).isActive = true
        
        
        view.addSubview(roundLabel)
        roundLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 20).isActive = true
        roundLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

}

