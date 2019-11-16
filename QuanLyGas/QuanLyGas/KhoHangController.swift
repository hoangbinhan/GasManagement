//
//  KhoHangController.swift
//  QuanLyGas
//
//  Created by Pro on 11/14/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

import UIKit

class KhoHangController: UIViewController {

   
    let mCart = UIButton()
    let navBar = UINavigationBar()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(navBar)
        self.navBar.addSubview(mCart)
       
        self.createNavigation()
        self.setupUI()
        //
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        let statusBarColor = Color.navBgColor
        statusBarView.backgroundColor = statusBarColor
        statusBarView.alpha = 0.85
        view.addSubview(statusBarView)
    }
    
    //
    func createNavigation() {
       
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        navBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        navBar.topAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        navBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        let navItem = UINavigationItem(title: StringConstants.khohang)
        let mBackButton = UIBarButtonItem.init(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(self.tapButtonBack(sender:)))
        mBackButton.tintColor = .white
        let mSearchButton = UIBarButtonItem.init(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(self.tapButtonSearch(sender:)))
        mSearchButton.tintColor = .white
           navItem.leftBarButtonItem = mBackButton
        navItem.rightBarButtonItem  = mSearchButton
           navBar.setItems([navItem], animated: false)
           self.view.addSubview(navBar)
        navBar.barTintColor = Color.navBgColor
     
    }
        func setupUI() {
            self.mCart.translatesAutoresizingMaskIntoConstraints = false
            self.mCart.trailingAnchor.constraint(equalTo: self.navBar.trailingAnchor, constant: -49).isActive = true
            self.mCart.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 32).isActive = true
            self.mCart.heightAnchor.constraint(equalToConstant: 20).isActive = true
            self.mCart.widthAnchor.constraint(equalToConstant: 21).isActive = true
            self.mCart.setImage(UIImage(named: "cart"), for: .normal)
            
            
    }
    @objc func tapButtonBack(sender: UIBarButtonItem!) {
           print("aaaa")
       }
       @objc func tapButtonSearch(sender: UIBarButtonItem!) {
           print("aaaa")
       }


   

}
