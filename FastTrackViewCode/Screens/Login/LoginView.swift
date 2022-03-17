//
//  LoginViewControllerScreen.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import Foundation


import UIKit

protocol LoginViewDelegate: AnyObject {
    func didTapForgotButton()
    func didTapRegisterButton()
}

public class LoginView: UIView {
    
    weak var delegate: LoginViewDelegate?
    
    var logoImage: UIImageView = {
        let yamahaImage = "yamaha_club.png"
        let image = UIImage(named: yamahaImage)
        let view = UIImageView(image: image!)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var topLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.font = UIFont.systemFont(ofSize: 20, weight: .light)
        view.text = "ENTRE NESSE UNIVERSO      DE BENEFÍCIOS"
        view.textAlignment = .center
        view.numberOfLines = 3
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var tfStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 20.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var firstTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Email"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var secondTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Senha"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var forgotButton: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        view.setTitle("Esqueceu a senha?", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(didTapForgotButton), for: .touchUpInside)
        return view
    }()
    
    var entrarButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.tintColor = .white
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.setTitle("ENTRAR", for: .normal)
        view.layer.cornerRadius = 26.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var labelStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 4.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var stackLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.font = UIFont.systemFont(ofSize: 14)
        view.text = "Novo por aqui?"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var registerButton: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.setTitle("Cadastre-se", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func didTapForgotButton() {
        print("didTapLoginButton on LoginView")
        delegate?.didTapForgotButton()
    }
    
    @objc private func didTapRegisterButton() {
        print("didTapRegisterButton on LoginView")
        delegate?.didTapRegisterButton()
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
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 130),
            logoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 30),
            topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 135),
            topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -135),
            topLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 80)
        ])
    
        
        NSLayoutConstraint.activate([
            tfStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35),
            tfStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            tfStackView.heightAnchor.constraint(equalToConstant: 130),
            tfStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            tfStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            forgotButton.topAnchor.constraint(equalTo: tfStackView.bottomAnchor, constant: 20),
            forgotButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 252),
            forgotButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            forgotButton.heightAnchor.constraint(equalToConstant: 30)
        ])

        NSLayoutConstraint.activate([
            entrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 87),
            entrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -87),
            entrarButton.heightAnchor.constraint(equalToConstant: 55),
            entrarButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -164)
        ])
        
        NSLayoutConstraint.activate([
            labelStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -74),
            labelStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
    
}
