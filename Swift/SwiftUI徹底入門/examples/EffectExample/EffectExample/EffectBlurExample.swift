//
//  EffectBlurExample.swift
//  EffectExample
//
//  Created by sh0 on 2020/02/13.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct EffectBlurExample: View {
    
    @State var radius: CGFloat = 3.0
    
    var body: some View {
        VStack {
            Spacer()
            Image("big-image").resizable()
                .frame(width: 300, height: 300)
                .blur(radius: radius)
            Text("Hello SwiftUI!")
                .font(.largeTitle)
                .blur(radius: radius)
            VStack (alignment: .leading) {
                Text("x\(radius)")
                Slider(value: $radius, in: 0...20)
            }
            Spacer()
            Image("big-image").resizable()
                .frame(width: 300, height: 300)
            .colorInvert()
        }
    }
}

struct EffectBlurExample_Previews: PreviewProvider {
    static var previews: some View {
        EffectBlurExample()
    }
}
