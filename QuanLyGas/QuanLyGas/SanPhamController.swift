//
//  SanPhamController.swift
//  QuanLyGas
//
//  Created by HuyNguyen on 10/28/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

import UIKit
import Firebase

class SanPhamController: UIViewController , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout , UICollectionViewDataSource {
   
    var sizeCell : CGSize = .zero
    var spaceSize : CGFloat = 5
    var sanphamList = [SanPhamModel]()
    var ref: DatabaseReference!
    
    @IBOutlet weak var mCollectionView: UICollectionView!
    //
    let mviewline          = UIView()
    let mLblDanhMuc        = UILabel()
    let mLblDangKinhDoanh  = UILabel()
    let mLblSanPham        = UILabel()
    let mLblNgungKinhDoanh = UILabel()
    //
    let mLblsoluongDanhMuc        = UILabel()
    let mLblsoluongDangKinhDoanh  = UILabel()
    let mLblsoluongSanPham        = UILabel()
    let mLblsoluongNgungKinhDoanh = UILabel()
    //
    let mButtonDanhMuc = UIButton()
    let mButtonBo      = UIButton()
    //
    let mDanhMuc = UILabel()
    let mBo      = UILabel()
    //
    let navBar = UINavigationBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mviewline)
        self.view.addSubview(mLblNgungKinhDoanh)
        self.view.addSubview(mLblDanhMuc)
        self.view.addSubview(mLblDangKinhDoanh)
        self.view.addSubview(mLblSanPham)
        //
        self.view.addSubview(mLblsoluongNgungKinhDoanh)
        self.view.addSubview(mLblsoluongDanhMuc)
        self.view.addSubview(mLblsoluongDangKinhDoanh)
        self.view.addSubview(mLblsoluongSanPham)
        //
        self.view.addSubview(mButtonDanhMuc)
        self.view.addSubview(mButtonBo)
        //
        self.view.addSubview(mDanhMuc)
        self.view.addSubview(mBo)
        self.view.addSubview(navBar)
        //
        setupUI()
        self.createNavigation()
        self.CountCell()
        self.SetupCollectionView()
        //
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        let statusBarColor = Color.navBgColor
        statusBarView.backgroundColor = statusBarColor
        statusBarView.alpha = 0.85
        view.addSubview(statusBarView)
        //
        ref = Database.database().reference().child("SanPham")
        ref.observe(DataEventType.value) { (DataSnapshot) in
            if DataSnapshot.childrenCount > 0 {
                self.ref.removeAllObservers()
                for sanphamList in DataSnapshot.children.allObjects as! [DataSnapshot] {
                    let listObject = sanphamList.value as? [String: AnyObject]
                    let listMaSP = listObject?["maSP"]
                    let listDanhMuc = listObject?["danhmuc"]
                    let listTenSP = listObject?["tenSP"]
                    let listMoTa = listObject?["mota"]
                    let listGiaNhap = listObject?["gianhap"]
                    let listGiaBan = listObject?["giaban"]
                    let listSoLuong = listObject?["soluong"]
                    let listTongTien = listObject?["tongtien"]
                    let listNhaCC = listObject?["nhacungcap"]
                    let listDiaChiNCC = listObject?["diachiNCC"]
                    let listSDT = listObject?["SDT"]
                  
                    let sanpham = SanPhamModel(MaSP: listMaSP as! String?, DanhMuc: listDanhMuc as! String?, TenSP: listTenSP as! String?, MoTa: listMoTa as! String?, GiaNhap: listGiaNhap as! String?, GiaBan: listGiaBan as! String?, SoLuong: listSoLuong as! String?, TongTien: listTongTien as! String?, NhaCC: listNhaCC as! String?, DiaChiNCC: listDiaChiNCC as! String?, SDT: listSDT as! String?)
                    
                    self.sanphamList.append(sanpham)
                }
                self.mCollectionView.reloadData()
            }
        }
   
    }
    
    func setupUI() {
    //
    mLblDanhMuc.text = StringConstants.danhmuc
    mLblDanhMuc.translatesAutoresizingMaskIntoConstraints = false
    mLblDanhMuc.topAnchor.constraint(equalTo: self.navBar.bottomAnchor, constant: 16).isActive = true
    mLblDanhMuc.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
    mLblDanhMuc.heightAnchor.constraint(equalToConstant: 14).isActive = true
    //
    mLblsoluongDanhMuc.text = "0"
    mLblsoluongDanhMuc.translatesAutoresizingMaskIntoConstraints = false
    mLblsoluongDanhMuc.centerYAnchor.constraint(equalTo: self.mLblDanhMuc.centerYAnchor).isActive = true
    mLblsoluongDanhMuc.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 160).isActive = true
    mLblsoluongDanhMuc.heightAnchor.constraint(equalToConstant: 14).isActive = true
    //
    mLblDangKinhDoanh.text = StringConstants.dangkinhdoanh
    mLblDangKinhDoanh.translatesAutoresizingMaskIntoConstraints = false
    mLblDangKinhDoanh.topAnchor.constraint(equalTo: self.mLblDanhMuc.bottomAnchor, constant: 15).isActive = true
    mLblDangKinhDoanh.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
    mLblDangKinhDoanh.heightAnchor.constraint(equalToConstant: 14).isActive = true
    //
    mLblsoluongDangKinhDoanh.text = "0"
    mLblsoluongDangKinhDoanh.translatesAutoresizingMaskIntoConstraints = false
    mLblsoluongDangKinhDoanh.centerYAnchor.constraint(equalTo: self.mLblDangKinhDoanh.centerYAnchor).isActive = true
    mLblsoluongDangKinhDoanh.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 160).isActive = true
    mLblsoluongDangKinhDoanh.heightAnchor.constraint(equalToConstant: 14).isActive = true
    //
    mLblSanPham.text = StringConstants.sanpham
    mLblSanPham.translatesAutoresizingMaskIntoConstraints = false
        mLblSanPham.topAnchor.constraint(equalTo: self.navBar.bottomAnchor, constant: 16).isActive = true
    mLblSanPham.leadingAnchor.constraint(equalTo: self.mLblsoluongDanhMuc.trailingAnchor, constant: 15).isActive = true
    mLblSanPham.heightAnchor.constraint(equalToConstant: 14).isActive = true
    //
    mLblsoluongSanPham.text = "0"
    mLblsoluongSanPham.translatesAutoresizingMaskIntoConstraints = false
    mLblsoluongSanPham.centerYAnchor.constraint(equalTo: self.mLblSanPham.centerYAnchor).isActive = true
    mLblsoluongSanPham.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
    mLblsoluongSanPham.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
    //
    mLblNgungKinhDoanh.text = StringConstants.ngungkinhdoanh
    mLblNgungKinhDoanh.translatesAutoresizingMaskIntoConstraints = false
    mLblNgungKinhDoanh.topAnchor.constraint(equalTo: self.mLblSanPham.bottomAnchor, constant: 15).isActive = true
    mLblNgungKinhDoanh.leadingAnchor.constraint(equalTo: self.mLblsoluongDangKinhDoanh.trailingAnchor, constant: 15).isActive = true
    mLblNgungKinhDoanh.heightAnchor.constraint(equalToConstant: 14).isActive = true
    //
    mLblsoluongNgungKinhDoanh.text = "0"
    mLblsoluongNgungKinhDoanh.translatesAutoresizingMaskIntoConstraints = false
    mLblsoluongNgungKinhDoanh.centerYAnchor.constraint(equalTo: self.mLblNgungKinhDoanh.centerYAnchor).isActive = true
    mLblsoluongNgungKinhDoanh.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
    mLblsoluongNgungKinhDoanh.heightAnchor.constraint(equalToConstant: 14).isActive = true
    //
    mviewline.translatesAutoresizingMaskIntoConstraints = false
    mviewline.heightAnchor.constraint(equalToConstant: 1).isActive = true
    mviewline.topAnchor.constraint(equalTo: self.mLblDangKinhDoanh.bottomAnchor, constant: 11).isActive = true
    mviewline.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
    mviewline.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
    mviewline.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    //
    mButtonDanhMuc.setImage(UIImage(named: "danhmuc"), for: .normal)
    mButtonDanhMuc.tintColor = .black
    mButtonDanhMuc.translatesAutoresizingMaskIntoConstraints = false
    mButtonDanhMuc.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32).isActive = true
    mButtonDanhMuc.topAnchor.constraint(equalTo: self.mLblDangKinhDoanh.bottomAnchor, constant: 22).isActive = true
    mButtonDanhMuc.widthAnchor.constraint(equalToConstant: 22).isActive = true
    mButtonDanhMuc.heightAnchor.constraint(equalToConstant: 20).isActive = true
    //
    mButtonBo.setImage(UIImage(named: "boloc"), for: .normal)
    mButtonBo.translatesAutoresizingMaskIntoConstraints = false
    mButtonBo.topAnchor.constraint(equalTo: self.mLblNgungKinhDoanh.bottomAnchor, constant: 22).isActive = true
    mButtonBo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -133).isActive = true
    mButtonBo.widthAnchor.constraint(equalToConstant: 22).isActive = true
    mButtonBo.heightAnchor.constraint(equalToConstant: 20).isActive = true
    //
    mDanhMuc.text = "Danh mục"
    mDanhMuc.translatesAutoresizingMaskIntoConstraints = false
    mDanhMuc.heightAnchor.constraint(equalToConstant: 20).isActive = true
    mDanhMuc.leadingAnchor.constraint(equalTo: self.mButtonDanhMuc.trailingAnchor, constant: 10).isActive = true
    mDanhMuc.centerYAnchor.constraint(equalTo: self.mButtonDanhMuc.centerYAnchor).isActive = true
    //
    mBo.text = "Bộ lọc"
    mBo.translatesAutoresizingMaskIntoConstraints = false
    mBo.heightAnchor.constraint(equalToConstant: 20).isActive = true
    mBo.leadingAnchor.constraint(equalTo: self.mButtonBo.trailingAnchor, constant: 10).isActive = true
    mBo.centerYAnchor.constraint(equalTo: self.mButtonBo.centerYAnchor).isActive = true
    // setupUI collectionview
        mCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5).isActive = true
        mCollectionView.topAnchor.constraint(equalTo: self.mBo.bottomAnchor, constant: 5).isActive = true
        mCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5).isActive = true
        mCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 40).isActive = true
    }
    //
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
    //
    func CountCell(){
        let remind = UIScreen.main.bounds.size.width - CGFloat(spaceSize) - 20
        let wid = remind
        let height = wid/3
        sizeCell = CGSize.init(width: wid, height: height)
    }
    // cấu hình cell
       func SetupCollectionView() {
           let cellXib = UINib.init(nibName: "SanPhamCollectionCell", bundle: nil)
        mCollectionView.register(cellXib, forCellWithReuseIdentifier: "SanPhamCollectionCell")
       }
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sanphamList.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mCollectionView.dequeueReusableCell(withReuseIdentifier: "SanPhamCollectionCell", for: indexPath) as! SanPhamCollectionCell
        cell.mImage.image = UIImage(named: "GAS")
        cell.mMaHang.text = sanphamList[indexPath.row].MaSP
        cell.mStatus.text = "còn"
        cell.mTenHang.text = sanphamList[indexPath.row].TenSP
        cell.layer.cornerRadius = 3
        cell.layer.borderWidth = 1
        cell.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return cell
        
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
       {
           return sizeCell
       }

       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
       {
        return UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
       }
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
       {
           return spaceSize
       }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
       {return spaceSize}
       
    
    @objc func tapButtonBack(sender: UIBarButtonItem!) {
           print("aaaa")
       }
       @objc func tapButtonCart(sender: UIBarButtonItem!) {
           print("aaaa")
       }


}
