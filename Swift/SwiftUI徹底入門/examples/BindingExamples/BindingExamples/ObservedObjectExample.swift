//
//  ObservedObjectExample.swift
//  BindingExamples
//
//  Created by sh0 on 2020/02/15.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

class MyData: ObservableObject {
    @Published var score = 0
}

struct ObservedObjectExample: View {
    @ObservedObject var data: MyData = MyData()
    
    var body: some View {
        VStack {
            Text("\(data.score)")
                Button(action: {
                self.data.score += 1
                }) {
                Text("カウントアップ")
            }
        }
    }
}

struct ObservedObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectExample()
    }
}
