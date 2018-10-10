//
//  InvoiceItem.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
class InvoiceItem {
    
}

extension InvoiceItem: SceneReceiver {
    
    func receive<U: Grid>(From sender: U) {
        print()
    }
    
    func receive<U: InvoiceItem>(From sender: U) {
        print()
    }

}

extension InvoiceItem: SceneOperator {
    func operate<U: InvoiceItem>(_ receiver: U) {
        self.receive(From: receiver)
    }
}
