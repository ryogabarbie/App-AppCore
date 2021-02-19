//
//  ViewController.swift
//  App
//
//  Created by yamamura ryoga on 2021/01/15.
//

import UIKit
import Umbrella
import Feature1
import Feature2
import Feature3

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Observable.just("just")
            .subscribe(onNext: { string in
                print(string)
            })
            .dispose()

        let repo = UserDefaultsRepository()
        repo.setSample("haraheri")
        repo.sample
            .subscribe({ string in
                print(string)
            })
            .dispose()

        print(DataClass())
        print(APIKit.Session.self)

        Feature1.hoge()
        Feature2.hoge()
        Feature3.hoge()
    }
}

