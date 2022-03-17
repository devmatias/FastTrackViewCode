//
//  RegisterViewControllerScreen.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 05/03/22.
//

import Foundation
import UIKit

protocol RegisterViewDelegate: AnyObject {
    func didTapLoginButton()
}

public class RegisterView: UIView {
    
    weak var delegate: RegisterViewDelegate?
    
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
        view.text = "ENTRE NESSE UNIVERSO                  DE BENEFÍCIOS"
        view.textAlignment = .center
        view.numberOfLines = 3
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var tfStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 15.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var firstTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Nome Completo"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var secondTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Email"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var thirdTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Telefone"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var fourthTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   CPF"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var fifthTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Senha"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var sixthTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.placeholder = "   Confirmar Senha"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var bottomLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.font = UIFont.systemFont(ofSize: 12)
        view.text = "Sua senha precisa conter ao menos uma letra maiúscula, números e caracteres especiais."
        view.textAlignment = .center
        view.numberOfLines = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var cadastrarButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 137.0/255.0, alpha: 0.5)
        view.tintColor = .white
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.setTitle("CADASTRAR", for: .normal)
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
        view.text = "Já tem cadastro?"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var entrarButton: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1.0)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.setTitle("Entrar", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func didTapLoginButton() {
        print("didTapLoginButton on RegisterView")
        delegate?.didTapLoginButton()
    }
    
}

extension RegisterView: CodeView {
    func buildViewHierarchy() {
        addSubview(logoImage)
        addSubview(topLabel)
        addSubview(tfStackView)
        tfStackView.addArrangedSubview(firstTextField)
        tfStackView.addArrangedSubview(secondTextField)
        tfStackView.addArrangedSubview(thirdTextField)
        tfStackView.addArrangedSubview(fourthTextField)
        tfStackView.addArrangedSubview(fifthTextField)
        tfStackView.addArrangedSubview(sixthTextField)
        addSubview(bottomLabel)
        addSubview(cadastrarButton)
        addSubview(labelStackView)
        labelStackView.addArrangedSubview(stackLabel)
        labelStackView.addArrangedSubview(entrarButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 110),
            logoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 15),
            topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 80),
            topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -80),
            topLabel.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        NSLayoutConstraint.activate([
            tfStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35),
            tfStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            tfStackView.heightAnchor.constraint(equalToConstant: 400),
            tfStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            tfStackView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 6)
        ])
        
        NSLayoutConstraint.activate([
            bottomLabel.topAnchor.constraint(equalTo: tfStackView.bottomAnchor, constant: 20),
            bottomLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            bottomLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            cadastrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 87),
            cadastrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -87),
            cadastrarButton.heightAnchor.constraint(equalToConstant: 55),
            cadastrarButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -114)
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
