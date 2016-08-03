//
//  ViewController.swift
//  ProtocolExtensionError
//
//  Created by Rohan Dhaimade on 8/2/16.
//  Copyright © 2016 Rohan Dhaimade. All rights reserved.
//

import UIKit
import Example

extension ExampleStruct1 {
    var sample: String? { return "String" }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Should be "String", works because we're instantiaing a version of that
        print(ExampleStruct1().sample)

        // Should be "String" but is nil, why don't extensions inside our class work against the Protocol?
        print((ExampleStruct1() as ExampleProtocol).sample)

         // Should be "String" because we extended it inside the framework
        print((ExampleStruct2() as ExampleProtocol).sample)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

