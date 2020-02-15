//
//  StateAnimationExample.swift
//  EffectExample
//
//  Created by sh0 on 2020/02/14.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//  https://kean.github.io/post/swiftui-layout-system

import SwiftUI

struct StateAnimationExample: View {
    @State var showDetail = false
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.easeInOut(duration: 2)) {
                    self.showDetail.toggle()
                }
            }) {
                Text("画像を表示").padding()
            }
            
            if showDetail {
                Image("big-image")
            }
            Text("影響を受けるすべてのビューをアニメーションします")
            Spacer()
        }
    }
}

struct StateAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        StateAnimationExample()
    }
}
