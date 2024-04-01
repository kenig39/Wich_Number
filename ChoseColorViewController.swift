
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
