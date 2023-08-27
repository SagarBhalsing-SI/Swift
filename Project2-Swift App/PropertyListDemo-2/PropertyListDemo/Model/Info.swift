//
//  Info.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import Foundation

struct Info {
    var name        : String    = ""
    var email       : String    = ""
    var phone       : String    = ""
    var age         : String    = ""
    var eventDate   : Date      = Date.now
    var food        : Int       = 0
    var ambience    : Int       = 0
    var service     : Int       = 0
}

extension Info : Codable {
    
}

extension Info : CustomStringConvertible {
    var description: String {
        """
        Info
        -----
        NAME:       \(self.name)
        EMAIL:      \(self.email)
        PHONE:      \(self.phone)
        AGE:        \(self.age)
        DATE:       \(self.eventDate.description)
        FOOD:       \(self.food)
        AMBIENCE:   \(self.ambience)
        SERVICE:    \(self.service)
        
        """
    }
}
