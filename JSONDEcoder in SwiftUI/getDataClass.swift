//
//  getDataClass.swift
//  JSONDEcoder in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 12/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import SwiftUI

class getDataClass : ObservableObject{
    
    @Published var jsonData = [JsonStruct]()
    
    
    init() {
        
        let json = """
[
        {
             "name" : "Manna",
             "city" : "Rangpur",
             "phoneNumber" : 02394794

        },
        {
             "name" : "Manna",
             "city" : "Rangpur",
             "phoneNumber" : 02394794

        },
        {
            "name" : "Manna",
            "city" : "Rangpur",
            "phoneNumber" : 02394794

        }

]
""".data(using: .utf8)!
        
        
        
        
        
        
    }
    
    
}

