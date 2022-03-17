//
//  LoginViewControllerScreen.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import Foundation


import UIKit

final class LoginView: UIView {
    
    lazy var logoImage: UIImageView = {
        let yamahaImage = "yamaha_club.png"
        let image = UIImage(named: yamahaImage)
        let view = UIImageView(image: image!)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var topLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.font = UIFont.systemFont(ofSize: 20, weight: .light)
        view.text = "ENTRE NESSE UNIVERSO                  DE BENEFÍCIOS"
        view.textAlignment = .center
        view.numberOfLines = 3
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var tfStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 20.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var firstTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Email"
        view.borderStyle = .roundedRect
        return view
    }()
    
    lazy var secondTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Senha"
        view.borderStyle = .roundedRect
        return view
    }()
    
    lazy var forgotButton: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        view.setTitle("Esqueceu a senha?", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var entrarButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.tintColor = .white
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.setTitle("ENTRAR", for: .normal)
        view.layer.cornerRadius = 26.0
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    
    lazy var labelStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 4.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stackLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.font = UIFont.systemFont(ofSize: 14)
        view.text = "Novo por aqui?"
        return view
    }()
    
    lazy var registerButton: UIButton = {
        let view = UIButton(type: .system)

        view.tintColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.setTitle("Cadastre-se", for: .normal)
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

extension LoginView: CodeView {
    func buildViewHierarchy() {
        addSubview(logoImage)
        addSubview(topLabel)
        addSubview(tfStackView)
        tfStackView.addArrangedSubview(firstTextField)
        tfStackView.addArrangedSubview(secondTextField)
        addSubview(forgotButton)
        addSubview(entrarButton)
        addSubview(labelStackView)
        labelStackView.addArrangedSubview(stackLabel)
        labelStackView.addArrangedSubview(registerButton)
    }
    
    func setupConstraints() {
        
        logoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 130).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        topLabel.topAnchor.constraint(equalTo: logoImage.topAnchor, constant: 80).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110).isActive = true
        topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -110).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        tfStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35).isActive = true
        tfStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35).isActive = true
        tfStackView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        tfStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        tfStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        forgotButton.topAnchor.constraint(equalTo: tfStackView.bottomAnchor, constant: 20).isActive = true
        forgotButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 252).isActive = true
        forgotButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
        forgotButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        entrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 87).isActive = true
        entrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -87).isActive = true
        entrarButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        entrarButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -164).isActive = true
        labelStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -74).isActive = true
        labelStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true

    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
    
}
