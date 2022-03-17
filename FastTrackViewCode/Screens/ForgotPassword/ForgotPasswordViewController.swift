//
//  ForgotPasswordViewController.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    let screen: ForgotPasswordView
    
    init() {
        screen = ForgotPasswordView()
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
        title = "ESQUECI MINHA SENHA"
    }
    



}
