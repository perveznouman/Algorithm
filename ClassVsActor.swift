//
//  ClassVsActor.swift
//  ClassVsActor
//
//  Created by Nouman Pervez on 26/09/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let accountN = Account(id: 1, name: "N")
        let accountM = accountN
        accountM.name = "M"
        
        let bankAccountN = BankAccount(id: 11, name: "No")
        let bankAccountM = bankAccountN
        
        /* Need Task since we are calling from non-async method*/
        Task {
            await bankAccountM.updateName("Ma")
            print(await bankAccountN.name)
        }
        print("End")
    }
}

class Account {
    
    let id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

actor BankAccount {
    let id: Int
    var name: String

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }

    func updateName(_ newName: String) {
        self.name = newName
    }
    
    /*Can't update id because of let */
//    func updateID(_ newID: Int) {
//        self.id = newID
//    }
}
