//
//  ViewControllerVM.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import Foundation

class ViewControllerVM {
    //MARK: - Variables
    
//  var decimal : Double      = 0.0
    var name        : String    = ""
    var email       : String    = ""
    var phone       : String    = ""
    var age         : String    = ""
    var event       : Date      = Date.now
    var food        : Int       = 1
    var ambience    : Int       = 1
    var service     : Int       = 1
    
    
    //MARK: - Functions
    func save() {
        DataModelController.shared.save(newInfo: Info(name: self.name,
                                                      email: self.email,
                                                      phone: self.phone,
                                                      age:   self.age,
                                                      eventDate: self.event,
                                                      food:  self.food+1,
                                                      ambience: self.ambience+1,
                                                      service: self.service+1
                                                      
                                                      
            )
        )
    }
}
