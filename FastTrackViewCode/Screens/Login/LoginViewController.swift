//
//  LoginViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    let screen = LoginViewControllerScreen()
    
    private var leftBarButtonItem : UIBarButtonItem!
    private var navigationLeftButton : UIButton!


    
    override func loadView() {
        
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ENTRAR"

        self.leftBarButtonItem = UIBarButtonItem()
        screen.forgotButton.addTarget(self, action: #selector(didTapForgotButton), for: .touchUpInside)
        screen.registerButton.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)


        
        

    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.setNavigationBackButton()
    }

    private func setNavigationBackButton() {
        
        if(self.navigationLeftButton == nil) {
            self.navigationLeftButton = UIButton(type: UIButton.ButtonType.system)
        }
    }
    
    @objc private func didTapForgotButton() {
        let screen = ForgotPasswordViewController()
        
        navigationController?.pushViewController(screen, animated: true)
    }
    
    @objc private func didTapRegisterButton() {
        let screen = RegisterViewController()
        
        navigationController?.pushViewController(screen, animated: true)
    }
    
    
}









//
//    //Styling your navigationLeftButton goes here...
//
//    self.navigationLeftButton.addTarget(self, action: Selector("backButtonTapped"), forControlEvents: UIControlEvents.TouchUpInside)
//    self.leftBarButtonItem.customView = self.navigationLeftButton
//    self.navigationItem.leftBarButtonItem = self.leftBarButtonItem
//  }
//
//  func backButtonTapped(AnyObject:sender) {
//   // Here add your custom functionalities.
//   // Note, this will not pop to previous viewcontroller,
//
//  }
//}
