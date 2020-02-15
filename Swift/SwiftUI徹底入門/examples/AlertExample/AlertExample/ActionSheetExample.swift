//
//  ActionSheetExample.swift
//  AlertExample
//
//  Created by sh0 on 2020/02/12.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct ActionSheetExample: View {
    
    @State var showingSheet = false
    @State var message = ""
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingSheet = true
            }) {
                Text("アクションシート表示")
            }
            .actionSheet(isPresented: $showingSheet) {
                ActionSheet(
                    title: Text("質問"),
                    message: Text("絶対に失いたくないものは何？"),
                    buttons: [
                        .default(Text("お金")),
                        .default(Text("自由")) {
                            self.message = "自由なんすか..."
                        },
                        .default(Text("家族")) {
                            self.message = "家族だってさ"
                        },
                        .default(Text("仲間")) {
                            self.message = "仲間だよ〜"
                        },
                        .cancel(Text("キャンセル")) {
                            self.message = "キャンセルするなよ〜"
                        },
                    ])
            }
            Spacer()
            Text(message)
            Spacer()
            Text(message + "dayo")
        }

    }
}

struct ActionSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetExample()
    }
}
