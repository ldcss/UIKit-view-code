//
//  LoginScreen.swift
//  TesteUIkit
//
//  Created by Lucas Daniel Costa da Silva on 14/03/25.
//

import UIKit

class LoginScreen: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
  lazy var subImageView: UIImageView = {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: "bglogin")
    return image
  }()
  
  lazy var logoAppImageView: UIImageView = {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: "logo")
    return image
  }()
  
  lazy var loginLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .black
    label.font = UIFont.systemFont(ofSize: 44, weight: .bold)
    label.text = "Calabreso Dog"
    return label
  }()
  
  lazy var descriptionLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .black
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
    label.text = "Au au au au au"
    return label
  }()
  
  lazy var loginTextField: UITextField = {
    let text = UITextField()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.autocorrectionType = .no
    text.textColor = .black
    text.backgroundColor = UIColor(named: "cleanWhite")
    text.borderStyle = .roundedRect
    text.keyboardType = .emailAddress
    text.attributedPlaceholder = NSAttributedString(
      string: "Login",
      attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(
        0.4
      )]
    )
    text.clipsToBounds = true
    text.layer.cornerRadius = 12
    text.layer.borderWidth = 1
    text.layer.borderColor = UIColor.white.cgColor
    return text
  }()
  
  lazy var passwordTextField: UITextField = {
    let text = UITextField()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.autocorrectionType = .no
    text.textColor = .black
    text.backgroundColor = UIColor(named: "cleanWhite")
    text.borderStyle = .roundedRect
    text.keyboardType = .emailAddress
    text.isSecureTextEntry = true
    text.attributedPlaceholder = NSAttributedString(
      string: "Login",
      attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(
        0.4
      )]
    )
    text.clipsToBounds = true
    text.layer.cornerRadius = 12
    text.layer.borderWidth = 1
    text.layer.borderColor = UIColor.white.cgColor
    return text
  }()
  
  lazy var recoverPasswordButton: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Recover password?", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitleColor(UIColor(red: 232/255, green: 103/255, blue: 56/255, alpha: 1), for: .normal) // 232, 103, 56
    return button
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(self.subImageView)
    self.addSubview(self.logoAppImageView)
    self.addSubview(self.loginLabel)
    self.addSubview(self.descriptionLabel)
    self.addSubview(self.loginTextField)
    self.addSubview(self.passwordTextField)
    self.addSubview(self.recoverPasswordButton)
    self.configConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func configConstraints() {
    NSLayoutConstraint.activate([
      self.subImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
      self.subImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
      self.subImageView.topAnchor.constraint(equalTo: self.topAnchor),
      self.subImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
      
      self.logoAppImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 55),
      self.logoAppImageView.heightAnchor.constraint(equalToConstant: 120),
      self.logoAppImageView.widthAnchor.constraint(equalToConstant: 80),
      self.logoAppImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      
      self.loginLabel.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor, constant: 16),
      self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      
      self.descriptionLabel.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 6),
      self.descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
      self.descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
      
      self.loginTextField.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 24),
      self.loginTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
      self.loginTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
      self.loginTextField.heightAnchor.constraint(equalToConstant: 40),
      
      self.passwordTextField.topAnchor.constraint(equalTo: self.loginTextField.bottomAnchor, constant: 11),
      self.passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
      self.passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
      self.passwordTextField.heightAnchor.constraint(equalToConstant: 40),
      
      self.recoverPasswordButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 11),
      self.recoverPasswordButton.trailingAnchor.constraint(equalTo: self.loginTextField.trailingAnchor),
      self.recoverPasswordButton.heightAnchor.constraint(equalToConstant: 16)
    ])
  }
}
