//
//  OrderView.swift
//  EnvironmentObjectExample
//
//  Created by sh0 on 2020/02/17.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @State var item = ""
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            TextField("商品名を入力してください。", text: $item)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                self.order.items.append(self.item)
            }) {
                Text("保存")
            }
        }.padding()
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
