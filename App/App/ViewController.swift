//
//  ViewController.swift
//  App
//
//  Created by yamamura ryoga on 2021/01/15.
//

import UIKit
import Umbrella

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let hoge = Hoge()
        print(hoge.sample)
    }
}

