//
//  DatabaseService.swift
//  QuanLyGas
//
//  Created by Pro on 11/15/19.
//  Copyright © 2019 Nguyen Van Huy. All rights reserved.
//

import Foundation
import Firebase


class DatabaseService {
    static let shared = DatabaseService()
    private init() {}
    let sanphamsReference = Database.database().reference().child("SanPham")
    
}
