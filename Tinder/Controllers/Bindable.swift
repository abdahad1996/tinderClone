//
//  Bindable.swift
//  Tinder
//
//  Created by Cory Kim on 21/03/2019.
//  Copyright © 2019 CoryKim. All rights reserved.
//

import Foundation

//for binding a view to the view model using closure we use this class . we can do this with protocls or with rxswift
class Bindable<T> {
    //whenever the value is set the observer is called and wherever the implementation is written that code will be called which is reactive . 
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?)->())?
    
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
}
