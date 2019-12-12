//
//  ContentView.swift
//  JSONDEcoder in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 12/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var allData = getDataClass()
    
    
    var body: some View {
        
  
            
        List(self.allData.jsonData){ value in
         
            VStack{
              
                 Text(value.name)
                 Text("\(value.points!)")
                 Text(value.description)
            }
           
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
