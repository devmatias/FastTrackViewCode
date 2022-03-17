//
//  RegisterViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import UIKit

class RegisterViewController: UIViewController {

    let screen = RegisterViewControllerScreen()
    
    override func loadView() {
        
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CADASTRE SUA CONTA"
        screen.entrarButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
    }
    
    @objc private func didTapLoginButton() {
        
        navigationController?.popViewController(animated: true)
    }


}
