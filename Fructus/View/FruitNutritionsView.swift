//
//  FruitNutritionsView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 19/04/2022.
//

import SwiftUI

struct FruitNutritionsView: View {
    //MARK: PROPERTIES
    let fruit:Fruit
    let nutirions:[String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: BODY
    var body: some View {
        GroupBox {
            DisclosureGroup {
                ForEach(0 ..< nutirions.count , id: \.self) { item in
                    Divider().padding(.vertical , 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutirions[item])
                               
                        }
                        .foregroundColor(fruit.gradientColors.first)
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            } label: {
                Text("Nutritional value per 100g")
            }
        }//:GBox
       
    }
}
//MARK: PREVIEW
struct FruitNutritionsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 440))
            .padding()
    }
}
