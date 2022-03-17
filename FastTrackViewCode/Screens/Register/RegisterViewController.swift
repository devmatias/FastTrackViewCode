//
//  RegisterViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import UIKit

class RegisterViewController: UIViewController {

    let screen = RegisterView()
    
    override func loadView() {
        
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CADASTRE SUA CONTA"
        screen.delegate = self
    }
    
}

extension RegisterViewController: RegisterViewDelegate {
    func didTapLoginButton() {
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
//        for controller in self.navigationController!.viewControllers as Array {
//            if controller.isKind(of: LoginViewController.self) {
//                self.navigationController!.popToViewController(controller, animated: true)
//                break
//            }
//        }

    }
}


