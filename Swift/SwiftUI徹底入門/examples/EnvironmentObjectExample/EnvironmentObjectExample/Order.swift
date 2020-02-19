//
//  Order.swift
//  EnvironmentObjectExample
//
//  Created by sh0 on 2020/02/17.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import Foundation

class Order: ObservableObject {
    @Published var items = [String]()
}
