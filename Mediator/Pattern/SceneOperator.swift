//
//  SceneOperator.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
//typealias SceneOperator = AnySceneReceiver<Any> & AnySceneMediator<Any>
protocol SceneOperator {
    func operate(_ receiver: AnySceneReceiver<Self>/*, _ mediator: AnySceneMediator<Any>*/)
    func callback()
}

extension SceneOperator {
    /*func operate(_ receiver: AnySceneReceiver<InvoiceItem>/*, _ mediator: AnySceneMediator<Any>*/) {
        print()
    }*/
    
    func callback() {
        print()
    }
}

final class AnySceneOperator<T>: SceneOperator {
    func operate(_ receiver: AnySceneReceiver<AnySceneOperator<T>>) {
        print()
    }
    
    init<U: SceneOperator>(_ operator: U) {
        print()
    }
    
    /*func operate(_ receiver: AnySceneReceiver<Any>) {
        print()
    }*/
}

