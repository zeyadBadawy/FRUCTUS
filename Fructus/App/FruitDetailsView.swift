//
//  FruitDetailsView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 19/04/2022.
//

import SwiftUI

struct FruitDetailsView: View {
    
    //MARK: PROPERTIES
    let fruit:Fruit
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment:.center , spacing: 20) {
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment:.leading , spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors.first)
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRITIONS
                        FruitNutritionsView(fruit: fruit)
                        //SUB-HEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors.first)
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                        
                    }//: VStack
                    .frame(maxWidth: 640, alignment: .center)
                    .padding(.horizontal , 20)
                    
                }//: VStack
                .navigationBarHidden(true)
            }//: Scroll
            .edgesIgnoringSafeArea(.top)
        }//: NAV
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
    }
}
