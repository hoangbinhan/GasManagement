//
//  SanPhamModel.swift
//  QuanLyGas
//
//  Created by Pro on 11/16/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

class SanPhamModel {
    
       let MaSP: String?
       let DanhMuc: String?
       let TenSP: String?
       let MoTa: String?
       let GiaNhap: String?
       let GiaBan: String?
       let SoLuong: String?
       let TongTien: String?
       let NhaCC: String?
       let DiaChiNCC: String?
       let SDT: String?
    
    
    init(MaSP: String? ,DanhMuc: String? ,TenSP: String? , MoTa: String? , GiaNhap:String?, GiaBan:String?,SoLuong:String?,TongTien:String?,NhaCC:String?,DiaChiNCC:String?,SDT:String?) {
        self.MaSP = MaSP
        self.DanhMuc = DanhMuc
        self.TenSP = TenSP
        self.MoTa = MoTa
        self.GiaNhap = GiaNhap
        self.GiaBan = GiaBan
        self.SoLuong = SoLuong
        self.TongTien = TongTien
        self.NhaCC = NhaCC
        self.DiaChiNCC = DiaChiNCC
        self.SDT = SDT
    }
}


