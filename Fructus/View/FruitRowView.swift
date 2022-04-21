//
//  FruitRowView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 19/04/2022.
//

import SwiftUI

struct FruitRowView: View {
    
    //MARK: PROPERTIES
    let fruit:Fruit
    
    //MARK: BODY
    var body: some View {
        HStack{
            //Fruit Image
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            //Title and headling
            VStack(alignment:.leading , spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }//: VStack
            
            
        }//: HStack
    }
}
//MARK: PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
