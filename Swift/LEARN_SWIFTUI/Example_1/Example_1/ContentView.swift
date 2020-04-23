//
//  ContentView.swift
//  Example_1
//
//  Created by sh0 on 2020/04/22.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    Text("Hello World")
                }
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
