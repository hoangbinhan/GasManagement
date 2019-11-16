//
//  LoginController.swift
//  QuanLyGas
//
//  Created by Pro on 11/9/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    let mButtonBack = UIButton()
    let mGas     = UIImageView()
    let mTxtEmail   = UITextField()
    let mTxtPass    = UITextField()
    let mButtonLogin = UIButton()
    let mButtonForgotPassword = UIButton()
    let mLblOr      = UILabel()
    let mButtonFacebook = UIButton()
    let mButtonGmail    = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(mButtonBack)
        self.view.addSubview(mGas)
        self.view.addSubview(mTxtEmail)
        self.view.addSubview(mTxtPass)
        self.view.addSubview(mButtonLogin)
        self.view.addSubview(mButtonForgotPassword)
        self.view.addSubview(mLblOr)
        self.view.addSubview(mButtonFacebook)
        self.view.addSubview(mButtonGmail)
        //
        self.setupUI()
    }
    
    func setupUI() {
        mButtonBack.translatesAutoresizingMaskIntoConstraints = false
        mButtonBack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 35).isActive = true
        mButtonBack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mButtonBack.widthAnchor.constraint(equalToConstant: 8).isActive = true
        mButtonBack.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mButtonBack.setImage(UIImage(named: "back 2"), for: .normal)
       //
        mGas.translatesAutoresizingMaskIntoConstraints = false
        mGas.topAnchor.constraint(equalTo: self.mButtonBack.bottomAnchor, constant: 36).isActive = true
        mGas.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mGas.widthAnchor.constraint(equalToConstant: 251).isActive = true
        mGas.heightAnchor.constraint(equalToConstant: 80).isActive = true
        mGas.image = UIImage(named: "GAS")
        //
        mTxtEmail.translatesAutoresizingMaskIntoConstraints = false
        mTxtEmail.topAnchor.constraint(equalTo: self.mGas.bottomAnchor, constant: 51).isActive = true
        mTxtEmail.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        mTxtEmail.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTxtEmail.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
        mTxtEmail.placeholder = "  Email"
        mTxtEmail.backgroundColor = Color.TextFieldColor
        mTxtEmail.layer.cornerRadius = Constants.Radius.defaultTextFieldRadius
        //
        mTxtPass.translatesAutoresizingMaskIntoConstraints = false
        mTxtPass.topAnchor.constraint(equalTo: self.mTxtEmail.bottomAnchor, constant: 10).isActive = true
        mTxtPass.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        mTxtPass.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTxtPass.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
        mTxtPass.placeholder = "  Mật khẩu"
        mTxtPass.backgroundColor = Color.TextFieldColor
        mTxtPass.layer.cornerRadius = Constants.Radius.defaultTextFieldRadius
        //
        mButtonLogin.translatesAutoresizingMaskIntoConstraints = false
        mButtonLogin.topAnchor.constraint(equalTo: self.mTxtPass.bottomAnchor, constant: 19).isActive = true
        mButtonLogin.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
        mButtonLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        mButtonLogin.heightAnchor.constraint(equalToConstant: 49).isActive = true
        mButtonLogin.setTitle("Đăng Nhập", for: .normal)
        mButtonLogin.backgroundColor = Color.navBgColor
        mButtonLogin.layer.cornerRadius = Constants.Radius.defaultButtonRadius
        //
        mButtonForgotPassword.translatesAutoresizingMaskIntoConstraints = false
        mButtonForgotPassword.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mButtonForgotPassword.topAnchor.constraint(equalTo: self.mButtonLogin.bottomAnchor, constant: 19).isActive = true
        mButtonForgotPassword.heightAnchor.constraint(equalToConstant: 18).isActive = true
        mButtonForgotPassword.setTitle("Quên mật khẩu?", for: .normal)
        mButtonForgotPassword.setTitleColor(Color.navBgColor, for: .normal)
        //
       mLblOr.translatesAutoresizingMaskIntoConstraints = false
       mLblOr.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       mLblOr.topAnchor.constraint(equalTo: self.mButtonForgotPassword.bottomAnchor, constant: 56).isActive = true
       mLblOr.heightAnchor.constraint(equalToConstant: 18).isActive = true
        mLblOr.text = "Hoặc đăng nhập bằng"
        mLblOr.textColor = Color.navBgColor
        //
        mButtonFacebook.translatesAutoresizingMaskIntoConstraints = false
        mButtonFacebook.topAnchor.constraint(equalTo: self.mLblOr.bottomAnchor, constant: 14).isActive = true
        mButtonFacebook.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        mButtonFacebook.heightAnchor.constraint(equalToConstant: 48).isActive = true
        mButtonFacebook.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 150/375).isActive = true
        mButtonFacebook.backgroundColor = Color.navBgColor
        mButtonFacebook.setTitle("Facebook", for: UIControl.State.normal)
        mButtonFacebook.layer.cornerRadius = Constants.Radius.ButtonRadius
        //
       mButtonGmail.translatesAutoresizingMaskIntoConstraints = false
       mButtonGmail.topAnchor.constraint(equalTo: self.mLblOr.bottomAnchor, constant: 14).isActive = true
       mButtonGmail.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
       mButtonGmail.heightAnchor.constraint(equalToConstant: 48).isActive = true
       mButtonGmail.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 150/375).isActive = true
       mButtonGmail.backgroundColor = Color.navBgColor
       mButtonGmail.setTitle("Google", for: UIControl.State.normal)
        mButtonGmail.layer.cornerRadius = Constants.Radius.ButtonRadius

        
        

        
    }


    

}
