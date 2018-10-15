//
//  Bill.swift
//  Mediator
//
//  Created by Bruno Garelli on 5/26/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import Foundation

class Bill: SceneReceiver {
    func receive(From sender: AnySceneOperator<Grid>) {
        print()
    }
    
    typealias Sender = Grid
    
    func receive<R: Grid>(From sender: R) {
        sender.callback()
        print()
    }
}
