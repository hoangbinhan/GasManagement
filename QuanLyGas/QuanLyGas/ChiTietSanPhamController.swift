//
//  ChiTietSanPhamController.swift
//  QuanLyGas
//
//  Created by HuyNguyen on 10/30/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

import UIKit

class ChiTietSanPhamController: UIViewController {
    
    let mButtonNhapHang = UIButton()
    let mButtonChinhSua = UIButton()
    let mButtonXoa      = UIButton()
    //
    var mImage          = UIImageView()
    //
    let mLblTenSP       = UILabel()
    let mLblMaSP        = UILabel()
    let mLblGiaNhap     = UILabel()
    let mLblGiaBan      = UILabel()
    let mLblDanhMuc     = UILabel()
    let mLblSoLuongCon  = UILabel()
    let mLblMoTa        = UILabel()
    let mLblResultTenSP = UILabel()
    let mLblResultMaSP  = UILabel()
    let mLblResultDanhMuc     = UILabel()
    let mLblResultSoLuongCon  = UILabel()
    let mLblResultMoTa        = UILabel()
    let mLblVND  = UILabel()
    let mLblVND1 = UILabel()
    //
    let mTextFieldGiaNhap = UITextField()
    let mTextFieldGiaBan  = UITextField()
    //
    let labelChiTietSanPham = UILabel()
    //
    let navBar = UINavigationBar()
    
          
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mButtonNhapHang)
        self.view.addSubview(mButtonXoa)
        self.view.addSubview(mButtonChinhSua)
        self.view.addSubview(mImage)
        self.view.addSubview(mLblTenSP)
        self.view.addSubview(mLblMaSP)
        self.view.addSubview(mLblGiaNhap)
        self.view.addSubview(mLblDanhMuc)
        self.view.addSubview(mLblGiaBan)
        self.view.addSubview(mLblSoLuongCon)
        self.view.addSubview(mLblMoTa)
        self.view.addSubview(mLblResultTenSP)
        self.view.addSubview(mLblResultMaSP)
        self.view.addSubview(mLblResultDanhMuc)
        self.view.addSubview(mLblResultSoLuongCon)
        self.view.addSubview(mLblResultMoTa)
        self.view.addSubview(mLblVND)
        self.view.addSubview(mLblVND1)
        self.view.addSubview(mTextFieldGiaNhap)
        self.view.addSubview(mTextFieldGiaBan)
        self.view.addSubview(navBar)
        
     

        self.setupUI()
        self.addTarget()
        self.createNavigation()
        
        //
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        let statusBarColor = Color.navBgColor
        statusBarView.backgroundColor = statusBarColor
        statusBarView.alpha = 0.85
        view.addSubview(statusBarView)
       
      
    }
    
   

    func setupUI() {
       
        //
        mButtonNhapHang.translatesAutoresizingMaskIntoConstraints = false
        mButtonNhapHang.topAnchor.constraint(equalTo: self.navBar.bottomAnchor, constant: 16).isActive = true
        mButtonNhapHang.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mButtonNhapHang.widthAnchor.constraint(equalToConstant: 107).isActive = true
        mButtonNhapHang.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mButtonNhapHang.layer.cornerRadius = 4
        mButtonNhapHang.backgroundColor = Color.navBgColor
        mButtonNhapHang.setTitle(StringConstants.nhaphang, for: .normal)
        //
        mButtonChinhSua.translatesAutoresizingMaskIntoConstraints = false
        mButtonChinhSua.topAnchor.constraint(equalTo: self.navBar.bottomAnchor, constant: 16).isActive = true
        mButtonChinhSua.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mButtonChinhSua.widthAnchor.constraint(equalToConstant: 107).isActive = true
        mButtonChinhSua.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mButtonChinhSua.layer.cornerRadius = 4
        mButtonChinhSua.backgroundColor = Color.ChinhSuaButtonColor
        mButtonChinhSua.setTitle(StringConstants.chinhsua, for: .normal)
        mButtonChinhSua.titleColor(for: UIControl.State.highlighted)
        //
       mButtonXoa.translatesAutoresizingMaskIntoConstraints = false
        mButtonXoa.topAnchor.constraint(equalTo: self.navBar.bottomAnchor, constant: 16).isActive = true
       mButtonXoa.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16 ).isActive = true
       mButtonXoa.widthAnchor.constraint(equalToConstant: 107).isActive = true
       mButtonXoa.heightAnchor.constraint(equalToConstant: 36).isActive = true
       mButtonXoa.layer.cornerRadius = 4
       mButtonXoa.backgroundColor = Color.XoaButtonColor
       mButtonXoa.setTitle(StringConstants.xoa, for: .normal)
        //
       
        mImage.translatesAutoresizingMaskIntoConstraints = false
        mImage.topAnchor.constraint(equalTo: self.mButtonChinhSua.bottomAnchor, constant: 32).isActive = true
        mImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mImage.widthAnchor.constraint(equalToConstant: 140).isActive = true
        mImage.heightAnchor.constraint(equalTo: self.mImage.widthAnchor, multiplier: 1).isActive = true
        mImage.backgroundColor = Color.navBgColor
        //
        mLblTenSP.translatesAutoresizingMaskIntoConstraints = false
        mLblTenSP.topAnchor.constraint(equalTo: self.mImage.bottomAnchor, constant: 16).isActive = true
        mLblTenSP.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mLblTenSP.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblTenSP.text = "Tên sản phẩm"
        //
        mLblMaSP.translatesAutoresizingMaskIntoConstraints = false
        mLblMaSP.topAnchor.constraint(equalTo: self.mLblTenSP.bottomAnchor, constant: 16).isActive = true
        mLblMaSP.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mLblMaSP.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblMaSP.text = "Mã sản phẩm"
        //
        mLblGiaNhap.translatesAutoresizingMaskIntoConstraints = false
        mLblGiaNhap.topAnchor.constraint(equalTo: self.mLblMaSP.bottomAnchor, constant: 24).isActive = true
        mLblGiaNhap.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mLblGiaNhap.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblGiaNhap.text = "Giá nhập"
        mLblGiaNhap.textColor = Color.navBgColor
        //
        mLblGiaBan.translatesAutoresizingMaskIntoConstraints = false
        mLblGiaBan.topAnchor.constraint(equalTo: self.mLblGiaNhap.bottomAnchor, constant: 30).isActive = true
        mLblGiaBan.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mLblGiaBan.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblGiaBan.text = "Giá bán"
        mLblGiaBan.textColor = Color.XoaButtonColor
        //
        mLblDanhMuc.translatesAutoresizingMaskIntoConstraints = false
        mLblDanhMuc.topAnchor.constraint(equalTo: self.mLblGiaBan.bottomAnchor, constant: 24).isActive = true
        mLblDanhMuc.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mLblDanhMuc.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblDanhMuc.text = "Danh mục"
        //
        mLblSoLuongCon.translatesAutoresizingMaskIntoConstraints = false
        mLblSoLuongCon.topAnchor.constraint(equalTo: self.mLblDanhMuc.bottomAnchor, constant: 16).isActive = true
        mLblSoLuongCon.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mLblSoLuongCon.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblSoLuongCon.text = "Số lượng còn"
        //
        mLblMoTa.translatesAutoresizingMaskIntoConstraints = false
        mLblMoTa.topAnchor.constraint(equalTo: self.mLblSoLuongCon.bottomAnchor, constant: 16).isActive = true
        mLblMoTa.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        mLblMoTa.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblMoTa.text = "Mô tả"
        //
        mLblResultTenSP.translatesAutoresizingMaskIntoConstraints = false
        mLblResultTenSP.leadingAnchor.constraint(equalTo: self.mLblTenSP.trailingAnchor, constant: 45).isActive = true
        mLblResultTenSP.centerYAnchor.constraint(equalTo: self.mLblTenSP.centerYAnchor).isActive = true
        mLblTenSP.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblResultTenSP.text = "test"
        //
        mLblResultMaSP.translatesAutoresizingMaskIntoConstraints = false
        mLblResultMaSP.leadingAnchor.constraint(equalTo: self.mLblResultTenSP.leadingAnchor).isActive = true
        mLblResultMaSP.centerYAnchor.constraint(equalTo: self.mLblMaSP.centerYAnchor).isActive = true
        mLblResultMaSP.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblResultMaSP.text = "test"
        //
       mLblResultDanhMuc.translatesAutoresizingMaskIntoConstraints = false
       mLblResultDanhMuc.leadingAnchor.constraint(equalTo: self.mLblResultTenSP.leadingAnchor).isActive = true
       mLblResultDanhMuc.centerYAnchor.constraint(equalTo: self.mLblDanhMuc.centerYAnchor).isActive = true
       mLblResultDanhMuc.heightAnchor.constraint(equalToConstant: 16).isActive = true
       mLblResultDanhMuc.text = "test"
        //
        mLblResultSoLuongCon.translatesAutoresizingMaskIntoConstraints = false
        mLblResultSoLuongCon.leadingAnchor.constraint(equalTo: self.mLblResultTenSP.leadingAnchor).isActive = true
        mLblResultSoLuongCon.centerYAnchor.constraint(equalTo: self.mLblSoLuongCon.centerYAnchor).isActive = true
        mLblResultSoLuongCon.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblResultSoLuongCon.text = "3"
        //
        mLblResultMoTa.translatesAutoresizingMaskIntoConstraints = false
        mLblResultMoTa.leadingAnchor.constraint(equalTo: self.mLblResultTenSP.leadingAnchor).isActive = true
        mLblResultMoTa.centerYAnchor.constraint(equalTo: self.mLblMoTa.centerYAnchor).isActive = true
        mLblResultMoTa.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblResultMoTa.text = "áddsadasdas"
        //
        mLblVND.translatesAutoresizingMaskIntoConstraints = false
        mLblVND.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16).isActive = true
        mLblVND.centerYAnchor.constraint(equalTo: self.mLblGiaNhap.centerYAnchor).isActive = true
        mLblVND.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblVND.text = StringConstants.vnd
        //
        mLblVND1.translatesAutoresizingMaskIntoConstraints = false
        mLblVND1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16).isActive = true
        mLblVND1.centerYAnchor.constraint(equalTo: self.mLblGiaBan.centerYAnchor).isActive = true
        mLblVND1.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblVND1.text = StringConstants.vnd
        //
        mTextFieldGiaNhap.translatesAutoresizingMaskIntoConstraints = false
        mTextFieldGiaNhap.centerYAnchor.constraint(equalTo: self.mLblGiaNhap.centerYAnchor).isActive = true
        mTextFieldGiaNhap.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextFieldGiaNhap.widthAnchor.constraint(equalToConstant: 167).isActive = true
        mTextFieldGiaNhap.trailingAnchor.constraint(equalTo: self.mLblVND.leadingAnchor, constant: 10).isActive = true
        //
        mTextFieldGiaBan.translatesAutoresizingMaskIntoConstraints = false
        mTextFieldGiaBan.centerYAnchor.constraint(equalTo: self.mLblGiaBan.centerYAnchor).isActive = true
        mTextFieldGiaBan.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextFieldGiaBan.widthAnchor.constraint(equalToConstant: 167).isActive = true
        mTextFieldGiaBan.trailingAnchor.constraint(equalTo: self.mLblVND1.leadingAnchor, constant: 10).isActive = true
   
    }
    func createNavigation() {
       
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        navBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        navBar.topAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        navBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        let navItem = UINavigationItem(title: StringConstants.titleNavChitiet)
        let mBackButton = UIBarButtonItem.init(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(self.tapButtonBack(sender:)))
        mBackButton.tintColor = .white
        let mCartButton = UIBarButtonItem.init(image: UIImage(named: "cart"), style: .plain, target: self, action: #selector(self.tapButtonCart(sender:)))
        mCartButton.tintColor = .white
           navItem.leftBarButtonItem = mBackButton
        navItem.rightBarButtonItem  = mCartButton
           navBar.setItems([navItem], animated: false)
           self.view.addSubview(navBar)
        navBar.barTintColor = Color.navBgColor
     
    }
    //
    func addTarget() {
        //
        mButtonNhapHang.addTarget(self, action: #selector(buttonNhapHang), for: .touchUpInside)
        //
        mButtonChinhSua.addTarget(self, action: #selector(buttonChinhSua), for: .touchUpInside)
        //
       mButtonXoa.addTarget(self, action: #selector(buttonXoa), for: .touchUpInside)
    }
    @objc func buttonNhapHang(sender: UIButton!) {
      print("Button nhập hàng")
    }
    @objc func buttonChinhSua(sender: UIButton!) {
      print("Button chỉnh sửa")
    }
    @objc func buttonXoa(sender: UIButton!) {
      print("Button xoá")
    }
    @objc func tapButtonBack(sender: UIBarButtonItem!) {
        print("aaaa")
    }
    @objc func tapButtonCart(sender: UIBarButtonItem!) {
        print("aaaa")
    }
   
}
