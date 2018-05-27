//
//  SceneReceiver.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
protocol SceneReceiver {
    //associatedtype Receiver
    func receive(From sender: AnySceneOperator<Any>)
}

extension SceneReceiver {
    func receive(From sender: AnySceneOperator<Any>) {
        print()
    }
}

class AnySceneReceiver<T>: SceneReceiver {
    /*func receive(From sender: AnySceneOperator<Any>) {
        print()
    }*/
    
    
    
    //typealias Receiver = Any
    
    
}
