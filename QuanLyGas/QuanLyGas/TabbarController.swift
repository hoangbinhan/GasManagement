//
//  TabbarController.swift
//  QuanLyGas
//
//  Created by HuyNguyen on 10/29/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
        tabBar.barTintColor = Color.navBgColor
        // Do any additional setup after loading the view.
    }
    

    func setupTabbar() {
        let sanphamController = SanPhamController()
        sanphamController.tabBarItem.image = UIImage(named: "sanpham")
       // sanphamController.tabBarItem.selectedImage = UIImage(named: "back")

        let addItemsController = AddSanPhamController()
           addItemsController.tabBarItem.image = UIImage(named: "cart")
        //
        let chitietController = ChiTietSanPhamController()
        chitietController.tabBarItem.image = UIImage(named: "cart")
        //
        let khohangController = KhoHangController()
        khohangController.tabBarItem.image = UIImage(named: "khohang")
       
        viewControllers = [sanphamController,addItemsController,chitietController,khohangController]

    }

}
