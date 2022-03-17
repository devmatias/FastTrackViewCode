//
//  ViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 04/03/22.
//

import UIKit

class HomeViewController: UIViewController {

    let screen: HomeView
    
    init() {
        screen = HomeView()
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
        screen.delegate = self
    }
    
}

extension HomeViewController: HomeViewDelegate {
    func didTapLoginButton() {
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
        print("didTapLoginButton on Controller")
    }
    
    func didTapRegisterButton() {
        let registerVC = RegisterViewController()
        navigationController?.pushViewController(registerVC, animated: true)
        print("didTapRegisterButton on Controller")
    }
}
