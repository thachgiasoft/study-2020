//
//  RecipeModel.swift
//  My Favourite Recipes
//
//  Created by sh0 on 2020/04/22.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import UIKit

struct RecipeModel: Identifiable, Hashable {
    var id = UUID()
    var name = ""
    var origin = ""
    
    init(id: UUID, name: String, origin: String) {
        self.id = id
        self.name = name
        self.origin = origin
    }
}
