//
//  UserDefaultsRepositoryProtocol.swift
//  DataStore
//
//  Created by yamamura ryoga on 2021/01/15.
//

import Foundation
import RxSwift

public protocol UserDefaultsRepositoryProtocol {
    var sample: Single<String> { get }
    func setSample(_ newValue: String)
}
