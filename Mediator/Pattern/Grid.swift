//
//  Grid.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
class Grid {
    var items = [InvoiceItem]()
    
    func did(Tap item: InvoiceItem) {
        self.operate(item)
        //self.mediate(With: item as! AnySceneReceiver<Any>)
        //item.receive(From: self)
    }
}

extension Grid: SceneOperator {
    func operate<U: Bill>(_ receiver: U) {
        receiver.receive(From: self)
    }
    
    func operate<U: InvoiceItem>(_ receiver: U) {
        receiver.receive(From: self)
    }
}
