//
//  ContentView.swift
//  EffectExample
//
//  Created by sh0 on 2020/02/13.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var degree: Double = 0
    @State var x: CGFloat = 0.0
    @State var y: CGFloat = 0.0
    @State var z: CGFloat = 0.0
    @State var a: UnitPoint = .center
    @State var az: CGFloat = 0.0
    @State var p: CGFloat = 1
    @State var opacity = 1.0
    
    var body: some View {
        VStack {
            Image("big-image").resizable()
                .frame(width: 300, height: 300)
                .rotation3DEffect(.init(degrees: degree),
                                  axis: (x: x,
                                         y: y,
                                         z: z),
                                  anchor: a,
                                  anchorZ: az,
                perspective: p).opacity(opacity)
            VStack {
                VStack(alignment: .leading) {
                    Text("x\(opacity)")
                    Slider(value: $opacity, in: 0...1)
                }
                VStack(alignment: .leading) {
                    Text("a\(degree)")
                    Slider(value: $degree,
                           in: -180...180)
                }
                VStack(alignment: .leading) {
                    Text("x\(x)")
                    Slider(value: $x,
                           in: -1...1)
                }
                VStack(alignment: .leading) {
                    Text("y\(y)")
                    Slider(value: $y,
                           in: -1...1)
                }
                VStack(alignment: .leading) {
                    Text("z\(z)")
                    Slider(value: $z,
                           in: -1...1)
                }
                VStack(alignment: .leading) {
                    Text("az\(az)")
                    Slider(value: $az,
                           in: -1000...1000)
                }
                VStack(alignment: .leading) {
                    Text("p\(p)")
                    Slider(value: $p,
                           in: -1...1)
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
