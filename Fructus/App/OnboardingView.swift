//
//  OnboardingView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 18/04/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: PROPERTIES
    var fruits = fruitsData
    
    //MARK: BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }//: TabView
        .tabViewStyle(.page)
        .padding(.vertical , 20)
    }
}
//MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
