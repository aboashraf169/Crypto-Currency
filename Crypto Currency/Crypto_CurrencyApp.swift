//
//  Crypto_CurrencyApp.swift
//  Crypto Currency
//
//  Created by Ahmed Mohna on 31/08/2022.
//

import SwiftUI

@main
struct Crypto_CurrencyApp: App {
    
    @StateObject var vm  = CoinViewModel()
    var body: some Scene {
        WindowGroup {
            
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
                    .environmentObject(vm)
            }
         
        }
    }
}
