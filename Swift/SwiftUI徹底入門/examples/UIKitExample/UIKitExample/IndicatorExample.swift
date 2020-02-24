//
//  IndicatorExample.swift
//  UIKitExample
//
//  Created by sh0 on 2020/02/24.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct IndicatorExample: View {
    @State var animating = false
    var body: some View {
        VStack {
            Text("UIActivityIndicatorView")
            ActivityIndicator(animating: .constant(true))
            ActivityIndicator(animating: $animating)
            ActivityIndicator(style: .large,
                              animating: $animating)
            Toggle(isOn: $animating) {
                Text("インジケータの回転")
            }
        }
    }
}

struct IndicatorExample_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorExample()
    }
}
