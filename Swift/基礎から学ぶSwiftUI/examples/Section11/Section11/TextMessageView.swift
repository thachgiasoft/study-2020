//
//  TextMessageView.swift
//  Section11
//
//  Created by sh0 on 2020/03/15.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct TextMessageView: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack {
            Text("Hello SwiftUI")
                .font(.largeTitle)
                .foregroundColor(self.appData.favoriteColor)
            Divider()
            Text(self.appData.textMessage)
                .font(.largeTitle)
        }

    }
}

struct TextMessageView_Previews: PreviewProvider {
    static var previews: some View {
        TextMessageView()
    }
}
