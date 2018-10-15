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
    func receive(From sender: AnySceneOperator<Grid>) {
        print()
    }
    
    typealias Sender = Grid
    
    /*func receive(From sender: AnySceneOperator<Any>) {
        print()
    }*/
    
    
    /*func receive(From sender: AnySceneMediator<Any>) {
        print()
    }*/
    
    //typealias Receiver = Any
    
    func receive<R: Grid>(From sender: R) {
        print()
    }
    
    
}
