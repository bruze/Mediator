//
//  Grid.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
class Grid/*: AnySceneOperator<InvoiceItem>*/ {
    var items = [InvoiceItem]()
    
    func did(Tap item: InvoiceItem) {
        self.operate(item)
        //self.mediate(With: item as! AnySceneReceiver<Any>)
        //item.receive(From: self)
    }
}

extension Grid: SceneOperator {
    func operate(_ receiver: AnySceneReceiver<Grid>) {
        print()
    }
    
    
    /*func operate(_ receiver: AnySceneReceiver<Any>) {
        print()
    }*/
    
    /*func mediate(With receiver: /*AnySceneReceiver<Any>*/SceneReceiver) {
        print()
    }*/
    
    
    
    //typealias Mediator = Grid

    func operate</*R: SceneMediator,*/ U: Bill>(_ receiver: U/*, _ mediator: AnySceneMediator<U>*/) {
        receiver.receive(From: self)
    }
    
    func operate</*R: SceneMediator,*/ U: InvoiceItem>(_ receiver: U/*, _ mediator: AnySceneMediator<U>*/) {
        receiver.receive(From: self)
    }
}
