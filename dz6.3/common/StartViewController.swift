//
//  StartViewController.swift
//  dz6.3
//
//  Created by Абдулла-Бек on 24/3/23.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
 
    private let fonImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "fon1")
        return logoImage
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.textColor = UIColor.white
        label.font = .systemFont(ofSize: 28)
        label.numberOfLines = 0
        return label
    }()
    
    private let titlLabel: UILabel = {
        let label = UILabel()
        label.text = "Login to your account"
        label.textColor = UIColor.lightGray
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = UIColor.white
        label.font = .systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = UIColor.white
        label.font = .systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    private let eyeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        button.tintColor = .lightGray
        return button
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 22
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    private let titl2Label: UILabel = {
        let label = UILabel()
        label.text = "Don’t have account?"
        label.textColor = UIColor.darkGray
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    private let createNowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Now", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        return button
    }()
    
    private let googleImage: UIImageView = {
        let gImage = UIImageView()
        gImage.image = UIImage(named: "google")
        return gImage
    }()
    
    private let facebookImage: UIImageView = {
        let fImage = UIImageView()
        fImage.image = UIImage(named: "facebook")
        return fImage
    }()
    
    private let instagramImage: UIImageView = {
        let iImage = UIImageView()
        iImage.image = UIImage(named: "instagram")
        return iImage
    }()

    var isPasswordHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        initUI()
        initAction()
    }
    private func initUI() {
        
        view.addSubview(fonImage)
        view.addSubview(welcomeLabel)
        view.addSubview(titlLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(eyeButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(loginButton)
        view.addSubview(titl2Label)
        view.addSubview(createNowButton)
        view.addSubview(googleImage)
        view.addSubview(facebookImage)
        view.addSubview(instagramImage)
        
        fonImage.snp.makeConstraints { make in
            make.top.trailing.leading.equalToSuperview().inset(0)
            make.width.equalTo(393)
            make.height.equalTo(200)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(fonImage.snp.bottom).offset(60)
        }
        
        titlLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeLabel.snp.bottom)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(titlLabel.snp.bottom).offset(25)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(6)
            make.leading.trailing.equalTo(emailLabel)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
            make.leading.trailing.equalTo(emailTextField)
            make.height.equalTo(48)
        }
        
        eyeButton.snp.makeConstraints { make in
            make.trailing.equalTo(passwordTextField.snp.trailing)
            make.centerY.equalTo(passwordTextField)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(7)
            make.trailing.equalTo(passwordTextField.snp.trailing)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(60)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        titl2Label.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(14)
            make.leading.equalToSuperview().offset(65)
        }
        
        createNowButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(7)
            make.trailing.equalToSuperview().offset(-65)
        }
        
        googleImage.snp.makeConstraints { make in
            make.top.equalTo(titl2Label.snp.bottom).offset(50)
            make.leading.equalToSuperview().offset(100)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        facebookImage.snp.makeConstraints { make in
            make.top.equalTo(titl2Label.snp.bottom).offset(50)
            make.leading.equalTo(googleImage.snp.trailing).offset(50)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        instagramImage.snp.makeConstraints { make in
            make.top.equalTo(titl2Label.snp.bottom).offset(50)
            make.leading.equalTo(facebookImage.snp.trailing).offset(50)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
    }
    
    private func initAction() {
        
        eyeButton.addTarget(self, action: #selector(eyeTapped(_:)), for: .touchUpInside)
        
        loginButton.addTarget(self, action: #selector(loginTapped(_:)), for: .touchUpInside)
        
        createNowButton.addTarget(self, action: #selector(createNowTapped(_:)), for: .touchUpInside)
    }
    
    @objc func eyeTapped (_ sender: UIButton) {
        isPasswordHidden.toggle()
        passwordTextField.isSecureTextEntry = isPasswordHidden
    }
    
    @objc func loginTapped (_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 2
            emailTextField.placeholder = "Заполните, пожалуйста"
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordTextField.placeholder = "Заполните, пожалуйста"
            return
        }
    }
    
    @objc func createNowTapped (_ sender: UIButton) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
