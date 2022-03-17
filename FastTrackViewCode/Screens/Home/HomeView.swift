//
//  ViewControllerScreen.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 04/03/22.
//

import Foundation
import UIKit

protocol HomeViewDelegate: AnyObject {
    func didTapLoginButton()
    func didTapRegisterButton()
}

public class HomeView: UIView {
    
    weak var delegate: HomeViewDelegate?
    
    var background: UIImageView = {
        let backgroundImage = "background.png"
        let image = UIImage(named: backgroundImage)
        let view = UIImageView(image: image!)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleToFill
        return view
    }()
    
    var yamahaImage: UIImageView = {
        let stringImage = "logo_white 1.png"
        let image = UIImage(named: stringImage)
        let view = UIImageView(image: image!)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var buttonStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 20.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var buttonEntrar: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .init(white: 1, alpha: 0.25)
        view.tintColor = .white
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.setTitle("ENTRAR", for: .normal)
        view.layer.cornerRadius = 26.0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return view
    }()
   
    var buttonCadastrar: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .init(white: 1, alpha: 0.25)
        view.tintColor = .white
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.setTitle("CADASTRAR", for: .normal)
        view.layer.cornerRadius = 26.0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
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
    
    var firstLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 14)
        view.text = "Precisa de ajuda?"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var secondButton: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = UIColor(red: 36.0/255.0, green: 68.0/255.0, blue: 221.0/255.0, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.setTitle("Clique aqui", for: .normal)
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
    
    @objc private func didTapLoginButton() {
        print("didTapLoginButton on HomeView")
        delegate?.didTapLoginButton()
    }
    
    @objc private func didTapRegisterButton() {
        print("didTapRegisterButton on HomeView")
        delegate?.didTapRegisterButton()
    }

}

extension HomeView: CodeView {

    func buildViewHierarchy() {
        addSubview(background)
        addSubview(yamahaImage)
        addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(buttonEntrar)
        buttonStackView.addArrangedSubview(buttonCadastrar)
        addSubview(labelStackView)
        labelStackView.addArrangedSubview(firstLabel)
        labelStackView.addArrangedSubview(secondButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            background.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            background.topAnchor.constraint(equalTo: self.topAnchor),
            background.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            yamahaImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 107),
            yamahaImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -107),
            yamahaImage.heightAnchor.constraint(equalToConstant: 80),
            yamahaImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 90)
        ])
        
        NSLayoutConstraint.activate([
            buttonStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 87),
            buttonStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -87),
            buttonStackView.heightAnchor.constraint(greaterThanOrEqualToConstant: 130),
            
        ])
        
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: self.buttonStackView.bottomAnchor, constant: 25),
            labelStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            labelStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -70)
        ])
    }
    
    func setupAdditionalConfiguration() {

    }
}
