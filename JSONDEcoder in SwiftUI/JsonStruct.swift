//
//  JsonStruct.swift
//  JSONDEcoder in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 12/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import  SwiftUI

struct JsonStruct : Decodable,Identifiable {
    
    let id = UUID()
    let name : String
    let description : String
    let points : Int?
    
}
