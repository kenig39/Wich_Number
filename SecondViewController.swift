//
//  SecondViewController.swift
//  Whitch_Number
//
//  Created by Alexander on 28.03.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    
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
    

    override func loadView() {
        super.loadView()
         setting()
        
        nextViewButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        
        view.backgroundColor = .systemBackground
    print("loadView SecondViewController")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    print("viewDidLoad SecondViewController")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear SecondViewController")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear SecondViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        print("viewWillDisappear SecondViewController")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear SecondViewController")
    }
    
    @objc func back() {
        dismiss(animated: true)
    }
    
    func setting() {
        view.addSubview(nextViewButton)
        nextViewButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        nextViewButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        nextViewButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}
