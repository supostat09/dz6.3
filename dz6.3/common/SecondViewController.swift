//
//  SecondViewController.swift
//  dz6.3
//
//  Created by Абдулла-Бек on 24/3/23.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {

    private let fonImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "fon1")
        return logoImage
    }()
    
    private let registerLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.textColor = UIColor.white
        label.font = .systemFont(ofSize: 28)
        label.numberOfLines = 0
        return label
    }()
    
    private let titlLabel: UILabel = {
        let label = UILabel()
        label.text = "Create a new account"
        label.textColor = UIColor.lightGray
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.textColor = UIColor.white
        label.font = .systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        return textField
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
    
    private let mobileNumberlLabel: UILabel = {
        let label = UILabel()
        label.text = "Mobile Number"
        label.textColor = UIColor.white
        label.font = .systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()
    
    private let mobileNumberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Mobile Number"
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
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 22
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    var isPasswordHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        initAction()
        
    }
    
    private func initUI() {
        
        view.addSubview(fonImage)
        view.addSubview(registerLabel)
        view.addSubview(titlLabel)
        view.addSubview(usernameLabel)
        view.addSubview(usernameTextField)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(mobileNumberlLabel)
        view.addSubview(mobileNumberTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(eyeButton)
        view.addSubview(loginButton)
        
        fonImage.snp.makeConstraints { make in
            make.top.trailing.leading.equalToSuperview().inset(0)
            make.width.equalTo(393)
            make.height.equalTo(200)
        }
        
        registerLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(fonImage.snp.bottom)
        }
        
        titlLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(registerLabel.snp.bottom)
        }
        
        usernameLabel.snp.makeConstraints { make in
            make.top.equalTo(titlLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        usernameTextField.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(usernameTextField.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        mobileNumberlLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        mobileNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberlLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberTextField.snp.bottom).offset(6)
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
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
    }
    
    private func initAction() {
        
        eyeButton.addTarget(self, action: #selector(eyeTapped(_:)), for: .touchUpInside)
        
        loginButton.addTarget(self, action: #selector(loginTapped(_:)), for: .touchUpInside)
        
    }
    
    @objc func eyeTapped (_ sender: UIButton) {
        isPasswordHidden.toggle()
        passwordTextField.isSecureTextEntry = isPasswordHidden
    }
    
    @objc func loginTapped (_ sender: UIButton) {
        guard let username = usernameTextField.text, !username.isEmpty,
              let email = emailTextField.text, !email.isEmpty,
              let mobileNumber = mobileNumberTextField.text, !mobileNumber.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            usernameTextField.layer.borderColor = UIColor.red.cgColor
            usernameTextField.layer.borderWidth = 2
            usernameTextField.placeholder = "Заполните, пожалуйста"
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 2
            emailTextField.placeholder = "Заполните, пожалуйста"
            mobileNumberTextField.layer.borderColor = UIColor.red.cgColor
            mobileNumberTextField.layer.borderWidth = 2
            mobileNumberTextField.placeholder = "Заполните, пожалуйста"
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordTextField.placeholder = "Заполните, пожалуйста"
            return
        }
        let vc = ThirdViewController()
        vc.email = emailTextField.text ?? "empty"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   
}
