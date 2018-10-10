//
//  SceneOperator.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation

protocol SceneOperator {
    func operate(_ receiver: AnySceneReceiver<Any>)
}

extension SceneOperator {
    func operate(_ receiver: AnySceneReceiver<Any>) {
        print()
    }
}

class AnySceneOperator<T>: SceneOperator {
    func operate<T>(_ receiver: T) where T : AnySceneReceiver<Any> {
        print()
    }
}

