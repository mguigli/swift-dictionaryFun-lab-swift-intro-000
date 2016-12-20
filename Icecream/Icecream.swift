//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var peopleWhoLikeFlavor: [String] = []
        
        for (name, iceCream) in favoriteFlavorsOfIceCream {
            if iceCream == flavor {
                peopleWhoLikeFlavor.append(name)
            }
        }
        
        return peopleWhoLikeFlavor
    }
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var namesOfPeople: [String] = []
        
        for (name, iceCream) in favoriteFlavorsOfIceCream {
            if iceCream == flavor {
                namesOfPeople.append(name)
            }
        }
        
        return namesOfPeople.count
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        var favoriteFlavor: String?
        
        if let iceCreamFlavor = favoriteFlavorsOfIceCream[person] {
            favoriteFlavor = iceCreamFlavor
        }
        return favoriteFlavor
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson: String) -> Bool {
        var updateFlavor: Bool = true

        if favoriteFlavorsOfIceCream[forPerson] == nil {
            updateFlavor = false
        } else if favoriteFlavorsOfIceCream[forPerson] == flavor {
            updateFlavor = false
        } else {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            updateFlavor = true
        }
        
        return updateFlavor
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        var removeGuest: Bool = true
        
        if favoriteFlavorsOfIceCream[person] == nil {
            removeGuest = false
        } else {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
        }
        
        return removeGuest
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        let numberOfPeople = favoriteFlavorsOfIceCream.count
        return numberOfPeople
    }
    

    
    
    
    // 8.
    
    func add(person: String, flavor: String) -> Bool {
        var addGuest: Bool = true
        
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        } else {
            addGuest = false
        }
        
        return addGuest
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        let totalGuests = allNames.count
        var countOfGuests = 0
        var listItem = ""
        
        for name in allNames {
            if let attendingGuests = favoriteFlavorsOfIceCream [name] {
                listItem += "\(name) likes \(attendingGuests)"
                countOfGuests += 1
            }
            
            if totalGuests > countOfGuests {
                listItem += "\n"
            }
        }
        
        return listItem
    }
    
    
    
    
    
    

}
