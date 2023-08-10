//
//  SheetCardView.swift
//  Crypto Currency
//
//  Created by Ahmed Mohna on 03/09/2022.
//

import SwiftUI

struct SheetCardView: View {
    let coin : CoinModel
    
    var body: some View {
        VStack{
            APIImageView(coin: coin)
                .scaleEffect(1.5)
                
            
            
            Text(coin.symbol.uppercased() )
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.vertical,5)
  
            
            Text(coin.name.uppercased() )
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.Theme.SecondaryText)
                
            
            
        }
    }
}

struct SheetCardView_Previews: PreviewProvider {
    static var previews: some View {
        SheetCardView(coin:dev.Coin)
    }
}
