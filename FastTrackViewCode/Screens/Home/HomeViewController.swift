//
//  ViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 04/03/22.
//

import UIKit

class HomeViewController: UIViewController {

    let screen = HomeView()
    let loginScreen = LoginViewControllerScreen()
    let registerScreen = RegisterViewControllerScreen()
    let forgotPasswordScreen = ForgotPasswordViewControllerScreen()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        setupNavigationBar()
    }
    
    @objc private func didTapLoginButton() {
        let screen = LoginViewController()
        navigationController?.pushViewController(screen, animated: true)
    }
    
    @objc private func didTapRegisterButton() {
        let screen = RegisterViewController()
        navigationController?.pushViewController(screen, animated: true)
    }

    func setupNavigationBar() {
        let navigation = UINavigationBar.appearance()
        let navigationFont = UIFont.systemFont(ofSize: 12, weight: .light)
        navigation.titleTextAttributes = [NSAttributedString.Key.font: navigationFont]
    }
    
    func setupButtons() {
        screen.buttonEntrar.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        screen.buttonCadastrar.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
    }
    
}


