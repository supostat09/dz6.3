//
//  ThirdViewController.swift
//  dz6.3
//
//  Created by Абдулла-Бек on 24/3/23.
//

import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    
    private let fonImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "fon1")
        return logoImage
    }()
    
    private let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot Password"
        label.textColor = UIColor.white
        label.font = .systemFont(ofSize: 28)
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
    
    private let titlLabel: UILabel = {
        let label = UILabel()
        label.text = "Don’t have account?"
        label.textColor = UIColor.darkGray
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    private let needHelpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Need Help?", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        return button
    }()
    
    private let sendButton: UIButton = {
        let button = UIButton()
        button.setTitle("Send OTP", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 22
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    var email: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    
    private func initUI() {
        
        view.addSubview(fonImage)
        view.addSubview(forgotPasswordLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(titlLabel)
        view.addSubview(needHelpButton)
        view.addSubview(sendButton)
        
        fonImage.snp.makeConstraints { make in
            make.top.trailing.leading.equalToSuperview().inset(0)
            make.width.equalTo(393)
            make.height.equalTo(200)
        }
        
        forgotPasswordLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(fonImage.snp.bottom).offset(31)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordLabel.snp.bottom).offset(61)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        titlLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(14)
            make.leading.equalToSuperview().offset(65)
        }
        
        needHelpButton.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(7)
            make.trailing.equalToSuperview().offset(-65)
        }
        
        sendButton.snp.makeConstraints { make in
            make.top.equalTo(titlLabel.snp.bottom).offset(22)
            make.leading.trailing.equalToSuperview().inset(48)
            make.height.equalTo(48)
        }
        
        emailTextField.text = email

    }
}
