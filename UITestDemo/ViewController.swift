//
//  ViewController.swift
//  UITestDemo
//
//  Created by Shantaram K on 20/09/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import UIKit


struct Person {
    var name: String
    lazy var familyTree: Int = {
        print("i am lazy")
        return 12
    }()
    
    
    
    init(name: String) {
        self.name = name
    }
    
}

class Car {
    lazy var model: String = {
        return "mu name is"
    }()
 
    lazy var model3 = {
        return "mu na12me is"
    }
    
    var name: String = ""
    
    
    var computerPropert: String {
        return "Car name is \(name)"
    }
    
    init(_ name: String) {
        self.name = name
    }
}




protocol flyable1 {
    func fly1()

}


protocol flyable2 {
    func fly2()

}

protocol flyable3 {
    func fly3()

}

extension flyable2 {
    func fly2() {
        print("fly2")
    }
    
}

protocol flyable: flyable1, flyable2, flyable3 {
    
    var name: String {set get}
    func fly()
}

extension flyable {

    func fly() {
        print("fly", name)
    }
 
    func fly1() {
        print("fly1")

    }
    
    func fly3() {
        print("fly3")

    }
}

struct Shaktiman: flyable {
  
    
 
    var name: String = "Shaktiman"
    
    func fly() {
        print("shakiman fly", name)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        let shaktiman = Shaktiman()
        shaktiman.fly()
        shaktiman.fly1()
        shaktiman.fly2()
        shaktiman.fly3()

    }

    @IBAction func pushview() {
        self.present(MViewController(), animated: true, completion: nil)
        self.navigationController?.pushViewController(MViewController(), animated: true)
    }

}

