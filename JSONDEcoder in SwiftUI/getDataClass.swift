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
        [{
            "name": "Durian",
            "points": 600,
            "description": "A fruit with a distinctive scent."
        },
        {
        "name": "Durian",
        "points": 600,
        "description": "A fruit with a distinctive scent."
        },
        {
        "name": "Durian",
        "points": 600,
        "description": "A fruit with a distinctive scent."
        },
        {
        "name": "Durian",
        "points": 600,
        "description": "A fruit with a distinctive scent."
        }
        ]
        """.data(using: .utf8)!
        
        do{
            self.jsonData = try JSONDecoder().decode([JsonStruct].self, from: json)
            
            for data in self.jsonData{
                print(data.name , data.description)
            }
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        
    }
    
    
}

