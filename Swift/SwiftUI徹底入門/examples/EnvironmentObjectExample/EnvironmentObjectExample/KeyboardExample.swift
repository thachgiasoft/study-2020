//
//  KeyboardExample.swift
//  EnvironmentObjectExample
//
//  Created by sh0 on 2020/02/18.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct KeyboardExample: View {
    @ObservedObject var keyboard = KeyboardObserver()
    @State var inputText = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image("big-image").resizable().frame(width: 300, height:300)
            TextField("テキスト入力", text:$inputText).padding()
        }.onAppear {
            self.keyboard.startObserve()
        }.onDisappear {
            self.keyboard.stopObserve()
        }.padding(.bottom, keyboard.keyboardHeight)
            .animation(.easeOut)
        
    }
}

struct KeyboardExample_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardExample()
    }
}
