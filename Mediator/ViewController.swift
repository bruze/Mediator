//
//  ViewController.swift
//  Mediator
//
//  Created by Bruno Garelli on 4/25/18.
//  Copyright © 2018 Bruno Garelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let grid = Grid()
        let bill = Bill()
        grid.operate(bill)
        let items = [InvoiceItem(), InvoiceItem()]
        grid.did(Tap: items.first!)
        items[0].operate(items[1])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

