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
    func operate(_ receiver: AnySceneReceiver<Any>/*, _ mediator: AnySceneMediator<Any>*/)
}

extension SceneOperator {
    /*func operate(_ receiver: AnySceneReceiver<InvoiceItem>/*, _ mediator: AnySceneMediator<Any>*/) {
        print()
    }*/
    func operate(_ receiver: AnySceneReceiver<Any>) {
        print()
    }
}

class AnySceneOperator<T>: SceneOperator {
    /*func operate(_ receiver: AnySceneReceiver<Any>) {
        print()
    }*/
}

