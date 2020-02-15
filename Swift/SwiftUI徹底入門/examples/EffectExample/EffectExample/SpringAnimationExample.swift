//
//  SpringAnimationExample.swift
//  EffectExample
//
//  Created by sh0 on 2020/02/14.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct SpringAnimationExample: View {
    @State private var angle: Double = 0
    @State var showDetail = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            Button(action: {self.angle += 45}) {
                Text("回転！")
            }
            
            Text("減衰スプリングモデル")
                .padding()
                .rotationEffect(.degrees(angle))
                .animation(.interpolatingSpring(stiffness: 10,
                                                damping: 1))
            
            Text("通常のバネアニメーション")
                .padding()
                .rotationEffect(.degrees(angle))
                .animation(.spring())
            
            Text("少しだけきびきび動くアニメーション")
                .padding()
                .rotationEffect(.degrees(angle))
                .animation(.interactiveSpring())
            
        }
    }
}

struct SpringAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimationExample()
    }
}
