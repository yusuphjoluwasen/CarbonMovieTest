//
//  Colors.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import UIKit

extension UIColor{
    
    //MARK:- HEXStringToUIColor
    static func hexStringToUIColor (hex:String, alpha:CGFloat = 1.0) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
    
    static let movieColorDarkGray : UIColor = hexStringToUIColor(hex: "#515151", alpha: 1)
    static let movieColorDarkGray2 : UIColor = hexStringToUIColor(hex: "#FAF0CA", alpha: 0.05)
    static let movieColorGray2 : UIColor = hexStringToUIColor(hex: "#BCBCBC")
    static let movieColorGrayWhite : UIColor = hexStringToUIColor(hex: "#FFFFFF",alpha: 0.10)
    static let movieColorGrayWhite2 : UIColor = hexStringToUIColor(hex: "#FFFFFF",alpha: 0.05)
    static let movieColorGray : UIColor = hexStringToUIColor(hex: "#BBBBBB", alpha: 1)
    static let movieColorGray3 : UIColor = hexStringToUIColor(hex: "#E0E0E0", alpha: 1)
    static let movieBackgroundColor: UIColor = hexStringToUIColor(hex: "#15141F", alpha: 1)
  
}


