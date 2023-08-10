//
//  UiApplication.swift
//  Crypto Currency
//
//  Created by Ahmed Mohna on 03/09/2022.
//

import Foundation
import UIKit


extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
