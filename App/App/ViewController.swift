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

        print(APIKit.Session.self)
    }
}

