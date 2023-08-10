//
//  CirCleButtonAnimationEffect.swift
//  Crypto Currency
//
//  Created by Ahmed Mohna on 31/08/2022.
//

import SwiftUI

struct CirCleButtonAnimationEffect: View {
    @Binding var  IsAnimated : Bool
    var body: some View {
       Circle()
            .stroke(.black,lineWidth: 2)
            .scaleEffect(IsAnimated ? 1 : 0)
            .opacity(IsAnimated ? 0 : 1)
            .animation(IsAnimated ? Animation.easeOut(duration: 1) : .none)
            
    }
}

struct CirCleButtonAnimationEffect_Previews: PreviewProvider {
    static var previews: some View {
        CirCleButtonAnimationEffect(IsAnimated: .constant(false))
    }
}
