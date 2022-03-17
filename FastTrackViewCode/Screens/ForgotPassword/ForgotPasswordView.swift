//
//  ForgotPasswordViewControllerScreen.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import Foundation


import UIKit

public class ForgotPasswordView: UIView {
    
    lazy var topLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.font = UIFont.systemFont(ofSize: 14)
        view.text = "Digite abaixo seu email. Você receberá um email com instruções para recuperar sua senha."
        view.textAlignment = .center
        view.numberOfLines = 3
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var textField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Email"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    
    lazy var resetButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.tintColor = .white
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.setTitle("RESETAR SENHA", for: .normal)
        view.layer.cornerRadius = 26.0
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ForgotPasswordViewControllerScreen: CodeView {
    func buildViewHierarchy() {
        addSubview(topLabel)
        addSubview(textField)
        addSubview(resetButton)
    }
    
    func setupConstraints() {
        topLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 138).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 80).isActive = true
        topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -80).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 52).isActive = true
        textField.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 180).isActive = true
        textField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 38).isActive = true
        textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -38).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 55).isActive = true
        resetButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 100).isActive = true
        resetButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 87).isActive = true
        resetButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -87).isActive = true
        resetButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
    
}
