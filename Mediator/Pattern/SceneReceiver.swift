//
//  SceneReceiver.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation
protocol SceneReceiver {
    associatedtype Sender: SceneOperator
    func receive(From sender: AnySceneOperator<Sender>)
}

extension SceneReceiver {
    func receive(From sender: AnySceneOperator<Sender>) {
        
    }
}

class AnySceneReceiver<T: SceneOperator>: SceneReceiver {
    typealias Sender = T
    /*func receive(From sender: AnySceneOperator<Any>) {
        print()
    }*/
    
    
    
    //typealias Receiver = Any
    
    
}
