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
    associatedtype OperateUpon: SceneReceiver
    func operate(_ receiver: OperateUpon/*, _ mediator: AnySceneMediator<Any>*/)
}

extension SceneOperator {
    /*func operate(_ receiver: AnySceneReceiver<InvoiceItem>/*, _ mediator: AnySceneMediator<Any>*/) {
        print()
    }*/
    
    func operate(_ receiver: OperateUpon) {
        print()
    }
}

class AnySceneOperator<T: SceneReceiver>: SceneOperator {
    typealias OperateUpon = T

    func operate(_ receiver: T) {
        print()
    }

    /*func operate(_ receiver: AnySceneReceiver<Any>) {
        print()
    }*/
}

