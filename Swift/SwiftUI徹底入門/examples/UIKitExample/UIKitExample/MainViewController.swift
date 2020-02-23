//
//  MainViewController.swift
//  UIKitExample
//
//  Created by sh0 on 2020/02/20.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func openSwiftUI(_ sender: Any) {
        let nextView = UIHostingController(rootView:
            VStack {
                Text("Hello SwiftUI!")
                    .font(.system(size: 50))
                Image("big-image")
            }
        )
        self.present(nextView, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
