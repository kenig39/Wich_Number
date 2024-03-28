//
//  ViewController.swift
//  Whitch_Number
//
//  Created by Alexander on 24.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
 
    var number1: Int = 0
    var number2: Int = 0
    
    var result: Int = 0
    
    var round: Int = 0
    
    var points: Int = 0
    
    let insertNumber: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insert Ansver"
        textField.translatesAutoresizingMaskIntoConstraints = false
       return textField
    }()
    
    let nextViewButton: UIButton = {
        let button = UIButton()
        button.setTitle("NextVC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
    
    let exerciseLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Text", size: 20)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let exerciseNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Text", size: 20)
        label.text = "Пример: "
        label.textColor = UIColor.black
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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let roundCount: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Text", size: 20)
        label.text = "Раунд: "
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()



    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkButton.addTarget(self, action: #selector(checkNumbers), for: .touchUpInside)
        
        nextViewButton.addTarget(self, action: #selector(nextView), for: .touchUpInside)
        
        setting()
        
        number1 = Int.random(in: 1...50)
        number2 = Int.random(in: 1...50)
        
        self.exerciseLabel.text = String("\(number1) +  \(number2)")
       
    }
    
    func  exersice(num1: Int, num2: Int) -> Int{
       result = num1 + num2
        
      return result
    }
    
    @objc func nextView() {
        let vc = SecondViewController()
        vc.title = "Next view"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
   
    @objc func checkNumbers() {
        
        
        guard let numberTextField = Int(self.insertNumber.text ?? "") else {
            return
        }
        
        if numberTextField == exersice(num1: number1, num2: number2) {
            
            round += 1
            points += 50
            
            
        } else if numberTextField != exersice(num1: number1, num2: number2) {
            round += 0
            points -= 50
            
        } else {
            
            points += 50
        }
            
           if round == 5 {
                let alert = UIAlertController(title: "Игра Окончена",
                                              message: "Вы набрани \(self.points) очков ",
                                              preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Начать заного",
                                              style: .default))
                self.present(alert, animated: true)
                self.round = 1
                self.points = 0
           } else {
               round += 0
           }
        
        number1 = Int.random(in: 1...50)
        number2 = Int.random(in: 1...50)
        
        self.exerciseLabel.text = String("\(number1) +  \(number2)")
       
        self.roundLabel.text = String(self.round)
        
    }
    
    func setting() {
        
        view.addSubview(exerciseLabel)
        exerciseLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        exerciseLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        exerciseLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(exerciseNameLabel)
        exerciseNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        exerciseNameLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 110 ).isActive = true
        
        
        
        view.addSubview(insertNumber)
        insertNumber.topAnchor.constraint(equalTo: exerciseLabel.bottomAnchor, constant: 15).isActive = true
        insertNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(resultNameLabel)
        resultNameLabel.topAnchor.constraint(equalTo: exerciseLabel.bottomAnchor, constant: 15).isActive = true
        resultNameLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 110 ).isActive = true
        
        view.addSubview(checkButton)
        checkButton.topAnchor.constraint(equalTo: insertNumber.bottomAnchor, constant: 15).isActive = true
        checkButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        checkButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        checkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(nextViewButton)
        nextViewButton.topAnchor.constraint(equalTo: insertNumber.bottomAnchor, constant: 15).isActive = true
        nextViewButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        nextViewButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextViewButton.rightAnchor.constraint(equalTo: checkButton.rightAnchor, constant: 80).isActive = true
        
       
        view.addSubview(roundLabel)
        roundLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        roundLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(roundCount)
        roundCount.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        roundCount.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
    }

}

