//
//  OnAppearAnimationExample.swift
//  EffectExample
//
//  Created by sh0 on 2020/02/15.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct OnAppearAnimationExample: View {
    @State var satur = 0.0
    
    var body: some View {
        Image("big-image")
            .saturation(satur)
            .animation(.linear(duration: 5))
            .onAppear {
                self.satur = 2.0
        }
    }
}

struct OnAppearAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearAnimationExample()
    }
}
