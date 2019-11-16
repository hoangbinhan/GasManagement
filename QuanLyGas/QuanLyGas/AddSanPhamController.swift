//
//  AddSanPhamController.swift
//  QuanLyGas
//
//  Created by Pro on 11/11/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

import UIKit
import Firebase

class AddSanPhamController: UIViewController {

    let mScroll = UIScrollView()
    let navBar = UINavigationBar()
    let mImageAdd = UIImageView()
    let mLblMaSP = UILabel()
    let mLblDanhMuc = UILabel()
    let mLblTenSP = UILabel()
    let mLblMoTa    = UILabel()
    let mLblThongTinSP = UILabel()
    let mLblGiaNhap = UILabel()
    let mLblGiaBan = UILabel()
    let mLblSoLuong = UILabel()
    let mLblTongTien = UILabel()
    let mLblNhaCungCap = UILabel()
    let mLblDiaChiNCC   = UILabel()
    let mLblSDT = UILabel()
    let mViewline = UIView()
    let mviewT = UIView()
    let mBtnHuyBo = UIButton()
    let mBtnTaoMoi = UIButton()
    //
    let mVND = UILabel()
    let mVND1 = UILabel()
    let mVND2 = UILabel()
    let mCai = UILabel()
    //
    let mTextMaSP = UITextField()
    let mTextDanhMuc = UITextField()
    let mTextTenSP = UITextField()
    let mTextMoTa = UITextField()
    let mTextGiaNhap = UITextField()
    let mTextGiaBan = UITextField()
    let mTextSoLuong = UITextField()
    let mTextTongTien = UITextField()
    let mTextNhaCC = UITextField()
    let mTextDiaChiNCC = UITextField()
    let mTextSDT = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        self.view.addSubview(mScroll)
        self.view.addSubview(navBar)
        self.mScroll.addSubview(mImageAdd)
        self.mScroll.addSubview(mLblMaSP)
        self.mScroll.addSubview(mLblDanhMuc)
        self.mScroll.addSubview(mLblTenSP)
        self.mScroll.addSubview(mLblMoTa)
        self.mScroll.addSubview(mLblThongTinSP)
        self.mScroll.addSubview(mLblGiaNhap)
        self.mScroll.addSubview(mLblGiaBan)
        self.mScroll.addSubview(mLblSoLuong)
        self.mScroll.addSubview(mLblTongTien)
        self.mScroll.addSubview(mLblNhaCungCap)
        self.mScroll.addSubview(mLblDiaChiNCC)
        self.mScroll.addSubview(mLblSDT)
        self.mScroll.addSubview(mViewline)
        self.mScroll.addSubview(mviewT)
        self.mScroll.addSubview(mBtnTaoMoi)
        self.mScroll.addSubview(mBtnHuyBo)
        self.mScroll.addSubview(mVND)
        self.mScroll.addSubview(mVND1)
        self.mScroll.addSubview(mVND2)
        self.mScroll.addSubview(mCai)
        self.mScroll.addSubview(mTextMaSP)
        self.mScroll.addSubview(mTextMoTa)
        self.mScroll.addSubview(mTextTenSP)
        self.mScroll.addSubview(mTextDanhMuc)
        self.mScroll.addSubview(mTextGiaBan)
        self.mScroll.addSubview(mTextGiaNhap)
        self.mScroll.addSubview(mTextSoLuong)
        self.mScroll.addSubview(mTextTongTien)
        self.mScroll.addSubview(mTextNhaCC)
        self.mScroll.addSubview(mTextSDT)
        self.mScroll.addSubview(mTextDiaChiNCC)
       
        //
        
        
        self.setupUI()
        self.createNavigation()
        
        //
         let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
         let statusBarColor = Color.navBgColor
         statusBarView.backgroundColor = statusBarColor
         statusBarView.alpha = 0.85
         view.addSubview(statusBarView)
        
    }

    func setupUI() {
      
        mScroll.translatesAutoresizingMaskIntoConstraints = false
        mScroll.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        mScroll.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        mScroll.topAnchor.constraint(equalTo: self.navBar.bottomAnchor, constant: 0).isActive = true
        mScroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        //
        mImageAdd.translatesAutoresizingMaskIntoConstraints = false
        mImageAdd.topAnchor.constraint(equalTo: self.mScroll.topAnchor, constant: 16).isActive = true
        mImageAdd.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mImageAdd.widthAnchor.constraint(equalToConstant: 80).isActive = true
        mImageAdd.heightAnchor.constraint(equalToConstant: 80).isActive = true
        mImageAdd.image = UIImage(named: "add 2")
        mImageAdd.layer.borderWidth = 1
        mImageAdd.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mLblMaSP.translatesAutoresizingMaskIntoConstraints = false
        mLblMaSP.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblMaSP.topAnchor.constraint(equalTo: self.mImageAdd.bottomAnchor, constant: 16).isActive = true
        mLblMaSP.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblMaSP.text = "Mã sản phẩm:"
        //
        mLblDanhMuc.translatesAutoresizingMaskIntoConstraints = false
        mLblDanhMuc.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblDanhMuc.topAnchor.constraint(equalTo: self.mLblMaSP.bottomAnchor, constant: 28).isActive = true
        mLblDanhMuc.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblDanhMuc.text = "Danh mục:"
        //
        mLblTenSP.translatesAutoresizingMaskIntoConstraints = false
        mLblTenSP.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblTenSP.topAnchor.constraint(equalTo: self.mLblDanhMuc.bottomAnchor, constant: 27).isActive = true
        mLblTenSP.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mLblTenSP.text = "Tên sản phẩm:"
        //
       mLblMoTa.translatesAutoresizingMaskIntoConstraints = false
       mLblMoTa.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
       mLblMoTa.topAnchor.constraint(equalTo: self.mLblTenSP.bottomAnchor, constant: 45).isActive = true
       mLblMoTa.heightAnchor.constraint(equalToConstant: 16).isActive = true
       mLblMoTa.text = "Mô tả:"
        //
        mViewline.translatesAutoresizingMaskIntoConstraints = false
        mViewline.topAnchor.constraint(equalTo: self.mLblMoTa.bottomAnchor, constant: 36).isActive = true
        mViewline.centerXAnchor.constraint(equalTo: self.mScroll.centerXAnchor).isActive = true
        mViewline.heightAnchor.constraint(equalToConstant: 1).isActive = true
        mViewline.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 342/375).isActive = true
        mViewline.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mLblThongTinSP.translatesAutoresizingMaskIntoConstraints = false
        mLblThongTinSP.topAnchor.constraint(equalTo: self.mViewline.bottomAnchor, constant: 10).isActive = true
        mLblThongTinSP.centerXAnchor.constraint(equalTo: self.mViewline.centerXAnchor).isActive = true
        mLblThongTinSP.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblThongTinSP.text = "Thông tin nhập sản phẩm"
 
        //
        mLblGiaNhap.translatesAutoresizingMaskIntoConstraints = false
        mLblGiaNhap.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblGiaNhap.topAnchor.constraint(equalTo: self.mLblThongTinSP.bottomAnchor, constant: 24).isActive = true
        mLblGiaNhap.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblGiaNhap.text = "Giá nhập:"
        //
        mLblGiaBan.translatesAutoresizingMaskIntoConstraints = false
        mLblGiaBan.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblGiaBan.topAnchor.constraint(equalTo: self.mLblGiaNhap.bottomAnchor, constant: 27).isActive = true
        mLblGiaBan.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblGiaBan.text = "Giá bán:"
        //
        mLblSoLuong.translatesAutoresizingMaskIntoConstraints = false
        mLblSoLuong.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblSoLuong.topAnchor.constraint(equalTo: self.mLblGiaBan.bottomAnchor, constant: 27).isActive = true
        mLblSoLuong.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblSoLuong.text = "Số lượng:"
        //
        mLblTongTien.translatesAutoresizingMaskIntoConstraints = false
        mLblTongTien.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblTongTien.topAnchor.constraint(equalTo: self.mLblSoLuong.bottomAnchor, constant: 27).isActive = true
        mLblTongTien.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblTongTien.text = "Tổng tiền:"
        //
        mLblNhaCungCap.translatesAutoresizingMaskIntoConstraints = false
        mLblNhaCungCap.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblNhaCungCap.topAnchor.constraint(equalTo: self.mLblTongTien.bottomAnchor, constant: 27).isActive = true
        mLblNhaCungCap.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblNhaCungCap.text = "Nhà cung cấp:"
        //
        mLblDiaChiNCC.translatesAutoresizingMaskIntoConstraints = false
        mLblDiaChiNCC.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblDiaChiNCC.topAnchor.constraint(equalTo: self.mLblNhaCungCap.bottomAnchor, constant: 27).isActive = true
        mLblDiaChiNCC.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblDiaChiNCC.text = "Địa chỉ NCC:"
        //
        mLblSDT.translatesAutoresizingMaskIntoConstraints = false
        mLblSDT.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mLblSDT.topAnchor.constraint(equalTo: self.mLblDiaChiNCC.bottomAnchor, constant: 27).isActive = true
        mLblSDT.heightAnchor.constraint(equalToConstant: 17).isActive = true
        mLblSDT.text = "Số điện thoại:"
        //
        mviewT.translatesAutoresizingMaskIntoConstraints = false
        mviewT.topAnchor.constraint(equalTo: self.mScroll.topAnchor, constant: 800).isActive = true
        mviewT.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 0).isActive = true
        mviewT.trailingAnchor.constraint(equalTo: self.mScroll.trailingAnchor, constant: 0).isActive = true
        mviewT.bottomAnchor.constraint(equalTo: self.mScroll.bottomAnchor, constant: 0).isActive = true
        //
        mBtnHuyBo.translatesAutoresizingMaskIntoConstraints = false
        mBtnHuyBo.topAnchor.constraint(equalTo: self.mLblSDT.bottomAnchor, constant: 33).isActive = true
        mBtnHuyBo.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 16).isActive = true
        mBtnHuyBo.heightAnchor.constraint(equalToConstant: 44).isActive = true
        mBtnHuyBo.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 163/375).isActive = true
        mBtnHuyBo.setTitle("Huỷ bỏ", for: .normal)
        mBtnHuyBo.setTitleColor(.white, for: .normal)
        mBtnHuyBo.backgroundColor = Color.navBgColor
        //
        mBtnTaoMoi.translatesAutoresizingMaskIntoConstraints = false
        mBtnTaoMoi.topAnchor.constraint(equalTo: self.mLblSDT.bottomAnchor, constant: 33).isActive = true
        mBtnTaoMoi.leadingAnchor.constraint(equalTo: self.mBtnHuyBo.trailingAnchor, constant: 17).isActive = true
        mBtnTaoMoi.heightAnchor.constraint(equalToConstant: 44).isActive = true
        mBtnTaoMoi.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 163/375).isActive = true
        mBtnTaoMoi.setTitle("Tạo mới", for: .normal)
        mBtnTaoMoi.setTitleColor(.white, for: .normal)
        mBtnTaoMoi.backgroundColor = Color.navBgColor
        mBtnTaoMoi.addTarget(self, action: #selector(tapButtonAdd), for: .touchUpInside)
        
        //
        mVND.translatesAutoresizingMaskIntoConstraints = false
        mVND.centerYAnchor.constraint(equalTo: self.mLblGiaNhap.centerYAnchor).isActive = true
        mVND.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 360).isActive = true
        mVND.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mVND.text = "VND"
        //
        mVND1.translatesAutoresizingMaskIntoConstraints = false
        mVND1.centerYAnchor.constraint(equalTo: self.mLblGiaBan.centerYAnchor).isActive = true
        mVND1.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 360).isActive = true
        mVND1.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mVND1.text = "VND"
        //
        mVND2.translatesAutoresizingMaskIntoConstraints = false
        mVND2.centerYAnchor.constraint(equalTo: self.mLblTongTien.centerYAnchor).isActive = true
        mVND2.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 360).isActive = true
        mVND2.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mVND2.text = "VND"
        //
        mCai.translatesAutoresizingMaskIntoConstraints = false
        mCai.centerYAnchor.constraint(equalTo: self.mLblSoLuong.centerYAnchor).isActive = true
        mCai.leadingAnchor.constraint(equalTo: self.mScroll.leadingAnchor, constant: 360).isActive = true
        mCai.heightAnchor.constraint(equalToConstant: 16).isActive = true
        mCai.text = "Cái"
        //
        mTextMaSP.translatesAutoresizingMaskIntoConstraints = false
        mTextMaSP.centerYAnchor.constraint(equalTo: self.mLblMaSP.centerYAnchor).isActive = true
        mTextMaSP.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextMaSP.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 215/375).isActive = true
        mTextMaSP.trailingAnchor.constraint(equalTo: self.mScroll.trailingAnchor, constant: 380).isActive = true
        mTextMaSP.layer.borderWidth = 1
        mTextMaSP.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextDanhMuc.translatesAutoresizingMaskIntoConstraints = false
        mTextDanhMuc.centerYAnchor.constraint(equalTo: self.mLblDanhMuc.centerYAnchor).isActive = true
        mTextDanhMuc.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextDanhMuc.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 215/375).isActive = true
        mTextDanhMuc.trailingAnchor.constraint(equalTo: self.mScroll.trailingAnchor, constant: 380).isActive = true
        mTextDanhMuc.layer.borderWidth = 1
        mTextDanhMuc.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextTenSP.translatesAutoresizingMaskIntoConstraints = false
        mTextTenSP.centerYAnchor.constraint(equalTo: self.mLblTenSP.centerYAnchor).isActive = true
        mTextTenSP.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextTenSP.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 215/375).isActive = true
        mTextTenSP.trailingAnchor.constraint(equalTo: self.mScroll.trailingAnchor, constant: 380).isActive = true
        mTextTenSP.layer.borderWidth = 1
        mTextTenSP.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextMoTa.translatesAutoresizingMaskIntoConstraints = false
        mTextMoTa.centerYAnchor.constraint(equalTo: self.mLblMoTa.centerYAnchor).isActive = true
        mTextMoTa.heightAnchor.constraint(equalToConstant: 72).isActive = true
        mTextMoTa.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 215/375).isActive = true
        mTextMoTa.trailingAnchor.constraint(equalTo: self.mScroll.trailingAnchor, constant: 380).isActive = true
        mTextMoTa.layer.borderWidth = 1
        mTextMoTa.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextGiaNhap.translatesAutoresizingMaskIntoConstraints = false
        mTextGiaNhap.centerYAnchor.constraint(equalTo: self.mLblGiaNhap.centerYAnchor).isActive = true
        mTextGiaNhap.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextGiaNhap.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 167/375).isActive = true
        mTextGiaNhap.trailingAnchor.constraint(equalTo: self.mVND.leadingAnchor, constant: -10).isActive = true
        mTextGiaNhap.layer.borderWidth = 1
        mTextGiaNhap.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextGiaBan.translatesAutoresizingMaskIntoConstraints = false
        mTextGiaBan.centerYAnchor.constraint(equalTo: self.mLblGiaBan.centerYAnchor).isActive = true
        mTextGiaBan.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextGiaBan.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 167/375).isActive = true
        mTextGiaBan.trailingAnchor.constraint(equalTo: self.mVND1.leadingAnchor, constant: -10).isActive = true
        mTextGiaBan.layer.borderWidth = 1
        mTextGiaBan.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextSoLuong.translatesAutoresizingMaskIntoConstraints = false
        mTextSoLuong.centerYAnchor.constraint(equalTo: self.mLblSoLuong.centerYAnchor).isActive = true
        mTextSoLuong.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextSoLuong.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 167/375).isActive = true
        mTextSoLuong.trailingAnchor.constraint(equalTo: self.mCai.leadingAnchor, constant: -10).isActive = true
        mTextSoLuong.layer.borderWidth = 1
        mTextSoLuong.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextTongTien.translatesAutoresizingMaskIntoConstraints = false
        mTextTongTien.centerYAnchor.constraint(equalTo: self.mLblTongTien.centerYAnchor).isActive = true
        mTextTongTien.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextTongTien.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 167/375).isActive = true
        mTextTongTien.trailingAnchor.constraint(equalTo: self.mVND2.leadingAnchor, constant: -10).isActive = true
        mTextTongTien.layer.borderWidth = 1
        mTextTongTien.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextNhaCC.translatesAutoresizingMaskIntoConstraints = false
        mTextNhaCC.centerYAnchor.constraint(equalTo: self.mLblNhaCungCap.centerYAnchor).isActive = true
        mTextNhaCC.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextNhaCC.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 215/375).isActive = true
        mTextNhaCC.leadingAnchor.constraint(equalTo: self.mTextTongTien.leadingAnchor).isActive = true
        mTextNhaCC.layer.borderWidth = 1
        mTextNhaCC.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextDiaChiNCC.translatesAutoresizingMaskIntoConstraints = false
        mTextDiaChiNCC.centerYAnchor.constraint(equalTo: self.mLblDiaChiNCC.centerYAnchor).isActive = true
        mTextDiaChiNCC.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextDiaChiNCC.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 215/375).isActive = true
        mTextDiaChiNCC.leadingAnchor.constraint(equalTo: self.mTextTongTien.leadingAnchor).isActive = true
        mTextDiaChiNCC.layer.borderWidth = 1
        mTextDiaChiNCC.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        //
        mTextSDT.translatesAutoresizingMaskIntoConstraints = false
        mTextSDT.centerYAnchor.constraint(equalTo: self.mLblSDT.centerYAnchor).isActive = true
        mTextSDT.heightAnchor.constraint(equalToConstant: 36).isActive = true
        mTextSDT.widthAnchor.constraint(equalTo: self.mScroll.widthAnchor, multiplier: 215/375).isActive = true
        mTextSDT.leadingAnchor.constraint(equalTo: self.mTextTongTien.leadingAnchor).isActive = true
        mTextSDT.layer.borderWidth = 1
        mTextSDT.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
    
     
        

        
        
        
    }
    func createNavigation() {
       
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        navBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        navBar.topAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        navBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        let navItem = UINavigationItem(title: StringConstants.titleNavSP)
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
 
    @objc func tapButtonBack(sender: UIBarButtonItem!) {
        print("aaaa")
    }
    @objc func tapButtonCart(sender: UIBarButtonItem!) {
        print("aaaa")
    }
    @objc func tapButtonAdd(sender: UIBarButtonItem!) {
        let parameters = [
            "maSP" : mTextMaSP.text,
            "danhmuc" : mTextDanhMuc.text,
            "tenSP" : mTextTenSP.text,
            "mota" : mTextMoTa.text,
            "gianhap" : mTextGiaNhap.text,
            "giaban" : mTextGiaBan.text,
            "soluong" : mTextSoLuong.text,
            "tongtien" : mTextTongTien.text,
            "nhacungcap" : mTextNhaCC.text,
            "diachiNCC" : mTextDiaChiNCC.text,
            "SDT" : mTextSDT.text
        ]
        DatabaseService.shared.sanphamsReference.childByAutoId().setValue(parameters)
    }
}
