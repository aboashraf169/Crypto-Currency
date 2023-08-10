//
//  APIImageView.swift
//  Crypto Currency
//
//  Created by Ahmed Mohna on 01/09/2022.
//

import SwiftUI

struct APIImageView: View {
    
    @StateObject var  vm : CoinImageViewModel
    
    init(coin:CoinModel){
         _vm = StateObject(wrappedValue: CoinImageViewModel(Coin: coin))
        
        
    }
    
    var body: some View {
        ZStack {
            
            if let image = vm.CoinImageUi {
                
                Image(uiImage: image)
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                
            }
            else if vm.IsLoading {
                
                ProgressView()
            }
            else {
                
                Text("?")
                
            }
            
            
            
        }
    }
}

struct APIImageView_Previews: PreviewProvider {
    static var previews: some View {
        APIImageView(coin: dev.Coin)
    }
}
