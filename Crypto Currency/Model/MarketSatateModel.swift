//
//  MarketSatateModel.swift
//  Crypto Currency
//
//  Created by Ahmed Mohna on 03/09/2022.
//

import Foundation

struct MarketState:Identifiable {
    let id = UUID().uuidString
    let Title :String
    let Value : String
    let percentChange:Double?
    
    init(title:String,value:String , PercenChange:Double?=nil){
        Title=title
        Value=value
        percentChange=PercenChange
        
    }
    
    
}


