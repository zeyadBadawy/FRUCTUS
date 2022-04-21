//
//  FruitCardView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 18/04/2022.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    @State private var isAnimation:Bool = false
    var fruit:Fruit
    
    //MARK: BODY
    
    var body: some View {
        ZStack{
            VStack{
                // FRIUT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.0 : 0.6)
                // TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.black.opacity(0.15), radius: 2, x: 2, y: 2)
                // HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth:480)
                // BUTTON
                StartButtonView()
            }//: VStack
        } //: ZStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 1)) {
                isAnimation = true
            }
        })
        .onDisappear(perform: {
                isAnimation = false
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 20 )
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
