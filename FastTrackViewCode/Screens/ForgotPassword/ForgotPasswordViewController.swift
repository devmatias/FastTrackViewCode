//
//  ForgotPasswordViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    let screen = ForgotPasswordViewControllerScreen()
    
    
    override func loadView() {
        
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ESQUECI MINHA SENHA"
    }
    



}
