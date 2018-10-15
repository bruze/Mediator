//
//  Grid.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
final class Grid/*: AnySceneOperator<InvoiceItem>*/ {
    var items = [InvoiceItem]()
    
    func did(Tap item: InvoiceItem) {
        self.operate(item)
        //self.mediate(With: item as! AnySceneReceiver<Any>)
        //item.receive(From: self)
    }
}

extension Grid: SceneOperator {
    func operate<U: SceneReceiver>(_ receiver: U) where U.Sender == Grid {
        receiver.receive(From: AnySceneOperator<Grid>(self))
    }
    
    
    func receive<U: InvoiceItem>(From sender: AnySceneOperator<U>) {
        print()
    }
    
    /*func mediate(With receiver: /*AnySceneReceiver<Any>*/SceneReceiver) {
        print()
    }*/
    
    
    
    //typealias Mediator = Grid

    /*func operate</*R: SceneMediator,*/ U: Bill>(_ receiver: U/*, _ mediator: AnySceneMediator<U>*/) {
        receiver.receive(From: self)
    }
    
    func operate</*R: SceneMediator,*/ U: InvoiceItem>(_ receiver: U/*, _ mediator: AnySceneMediator<U>*/) {
        receiver.receive(From: self)
    }*/
}
