//
//  ActivityIndicator.swift
//  UIKitExample
//
//  Created by sh0 on 2020/02/24.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import Foundation
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    public var style = UIActivityIndicatorView.Style.medium
    @Binding var animating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: Context) {
        if animating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
