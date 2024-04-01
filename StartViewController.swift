//
//  StartViewController.swift
//  Whitch_Number
//
//  Created by Alexander on 01.04.2024.
//

import UIKit

class StartViewController: UIViewController {

    
    let numberButton = UIButton()
    let colorButton = UIButton()
    let wichGamePlayLable = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        setup()
       
    }
    
    func setupUI() {
        wichGamePlayLable.text = "Какую игру хотите с играть?"
        wichGamePlayLable.font = UIFont(name: "", size: 20)
        wichGamePlayLable.textColor = UIColor.black
        wichGamePlayLable.translatesAutoresizingMaskIntoConstraints = false
        
        numberButton.setTitle("Сложи число", for: .normal)
        numberButton.tintColor = UIColor.green
        numberButton.layer.cornerRadius = 5
        numberButton.translatesAutoresizingMaskIntoConstraints = false
        
        colorButton.setTitle("Что за цвет", for: .normal)
        colorButton.tintColor = UIColor.red
        colorButton.layer.cornerRadius = 5
        colorButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubviews([wichGamePlayLable,numberButton, colorButton])
    }

    
    
    func setup() {
        wichGamePlayLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 200).isActive = true
        wichGamePlayLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        numberButton.topAnchor.constraint(equalTo: wichGamePlayLable.bottomAnchor, constant: 50).isActive = true
        numberButton.leftAnchor.constraint(equalTo: view.leadingAnchor, constant: 90).isActive = true
        numberButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        numberButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        colorButton.topAnchor.constraint(equalTo: wichGamePlayLable.bottomAnchor, constant: 50).isActive = true
        colorButton.leftAnchor.constraint(equalTo: numberButton.rightAnchor, constant: 50).isActive = true
        colorButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        colorButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

}
