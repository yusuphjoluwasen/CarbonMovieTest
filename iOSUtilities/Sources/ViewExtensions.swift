//
//  ViewExtensions.swift
//  iOSUtilities
//
//  Created by Guru on 05/12/2021.
//

import UIKit

//MARK:- Debounce
public func debounce(interval: Int, queue: DispatchQueue, action: @escaping (() -> Void)) -> () -> Void {
    let dispatchDelay = DispatchTimeInterval.milliseconds(interval)
    
    return {
        
        let dispatchTime: DispatchTime = DispatchTime.now() + dispatchDelay
        
        queue.asyncAfter(deadline: dispatchTime) {
            
            action()
            
        }
    }
}

//MARK:- UILabel
extension UILabel {
    public func setUpGenLabel(text:String, textColor:UIColor = .black, font:UIFont, numberOfLines:Int = 1,textAlignment:NSTextAlignment = .left){
        self.text = text
        self.font = font
        self.textColor = textColor
        self.sizeToFit()
        self.numberOfLines = numberOfLines
        self.textAlignment = textAlignment
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}


//MARK:- UIImageView
extension UIImageView {
    public func setUpImageView(image:String, contentMode:UIView.ContentMode = .scaleAspectFill){
        self.image = UIImage(named: image)
        self.contentMode = contentMode
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

//MARK:- UIViewController
extension UIViewController{
    
    public func setupNavSettings(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.done, target: self, action: nil)
    }
    
    public func simpleAlert(alertType:UIAlertController.Style? = .alert, title:String?, message:String = ""){
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: alertType ?? .alert)
        actionSheet.addAction(UIAlertAction(title: "OKAY", style: .cancel, handler: nil))
        present(actionSheet, animated: true, completion: nil)
    }
    
    public func animateView(action:(() -> ())? = nil, completedaction:(() -> ())? = nil){
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 8, options: .curveEaseInOut, animations: {
            action!()
        }, completion: { _ in
            completedaction!()
        })
    }
    
}
