//
//  Alert.swift
//  eggplant-brownie
//
//  Created by Eric de Olivera Rodrigues on 12/01/18.
//  Copyright © 2018 Eric de Olivera Rodrigues. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    
    let controller:UIViewController
    
    init(controller:UIViewController){
        self.controller = controller
    }
    func show(_ title:String = "Sorry", message:String = "Unexpected Error."){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "Understood", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(ok)
        controller.present(alert, animated: true, completion: nil)
    }
}
