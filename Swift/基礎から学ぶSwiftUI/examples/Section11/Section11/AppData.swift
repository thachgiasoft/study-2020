//
//  AppData.swift
//  Section11
//
//  Created by sh0 on 2020/03/15.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class AppData: ObservableObject {
    @Published var favoriteColor: Color = Color.black
    @Published var textMessage: String = "default"
}
