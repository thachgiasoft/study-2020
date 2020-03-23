//
//  ContentView.swift
//  Section11
//
//  Created by sh0 on 2020/03/15.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appData: AppData
    var body: some View {
        VStack {
            ColorSelectorView()
            TextMessageView()
        }
    }
}

struct ColorSelectorView: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        HStack {
            Button(action: {
                self.appData.favoriteColor = Color.black
                self.appData.textMessage = "default"
            }, label: {
                Text("Black")
                    .foregroundColor(Color.black)
            })
            
            Button(action: {
                self.appData.favoriteColor = Color.red
                self.appData.textMessage = "Redになったよー"
            }, label: {
                Text("Red")
                    .foregroundColor(Color.red)
            })
            
            Button(action: {
                self.appData.favoriteColor = Color.blue
                self.appData.textMessage = "Blueになったよー"
            }, label: {
                Text("Blue")
                    .foregroundColor(Color.blue)
                
            })
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(AppData())
    }
}
