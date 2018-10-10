//
//  SceneReceiver.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
protocol SceneReceiver {
    associatedtype ReceiveFrom: SceneOperator
    func receive(From sender: ReceiveFrom)
}

extension SceneReceiver  {
    func receive(From sender: ReceiveFrom) {
        print()
    }
}

class AnySceneReceiver<T: SceneOperator>: SceneReceiver {
    typealias ReceiveFrom = T
    
    func receive(From sender: ReceiveFrom) {
        print()
    }
    
    /*func receive(From sender: AnySceneOperator<Any>) {
        print()
    }*/
    
    
    
    //typealias Receiver = Any
    
    
}
