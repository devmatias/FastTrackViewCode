//
//  LoginViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    let screen = LoginView()

    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ENTRAR"
        screen.delegate = self
    }
    
}

extension LoginViewController: LoginViewDelegate {
    func didTapForgotButton() {
        let forgotVC = ForgotPasswordViewController()
        navigationController?.pushViewController(forgotVC, animated: true)
    }
    
    func didTapRegisterButton() {
        let registerVC = RegisterViewController()
        navigationController?.pushViewController(registerVC, animated: true)
    }
    

}
