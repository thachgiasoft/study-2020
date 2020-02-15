//
//  ContentView.swift
//  AlertExample
//
//  Created by sh0 on 2020/02/12.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showingAlert = false
    @State var answerMessage = ""
    
    var body: some View {
        let onButtonClickCat = {
            self.answerMessage = "あなたは猫を選びました⋯"
        }
        
        let onButtonClickDog = {
            self.answerMessage = "あなたは犬を選びました⋯"
        }
        
        return VStack {
            Button(action: {
                self.showingAlert = true
            }) {
                Text("アラートを表示")
            }
            .alert(isPresented: $showingAlert) {
                Alert.init(title: Text("質問"),
                           message: Text("あなたはどちらの動物に近いですか"),
                           primaryButton: .destructive(Text("サル🐵"),
                                                       action: onButtonClickCat),
                           secondaryButton: .cancel(Text("イヌ"),
                                                    action: onButtonClickDog))
            }
            Text(answerMessage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
