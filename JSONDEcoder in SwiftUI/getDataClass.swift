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
             "name" : "Munna",
             "city" : "Dhaka",
             "phoneNumber" : 53453

        },
        {
            "name" : "Shaon",
            "city" : "Rajshahi",
            "phoneNumber" : 1255675

        }

]
""".data(using: .utf8)!
        
        do{
            self.jsonData = try JSONDecoder().decode([JsonStruct].self, from: json)
            
            for data in self.jsonData{
                print(data.name , data.city)
            }
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        
    }
    
    
}

