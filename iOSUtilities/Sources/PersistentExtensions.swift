//
//  PersistentExtensions.swift
//  iOSUtilities
//
//  Created by Guru on 06/12/2021.
//

import Foundation
import UIKit

let userDefaults = UserDefaults.standard

extension UIViewController{

//add array of items to user defaulta
public func saveArrayToUserDefault(array:[String], identifier:String){
    userDefaults.set(array, forKey:identifier)
}
    
//get array of strings from userdefaults
public func retrieveArrayFromUserDefault(identifier:String) -> [String]{
    let array = userDefaults.array(forKey: identifier)  as? [String] ?? [String]()
    return array
}
    
}
