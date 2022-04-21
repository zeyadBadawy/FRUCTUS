//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 19/04/2022.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: PROPERTIES
    var fruit:Fruit
    @State private var isAnimation = false
    
    //MARK: BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical ,20)
                .scaleEffect(isAnimation ? 1.0 : 0.6)
        }//: ZStack
        .frame(height:440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimation = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
        
    }
}
