//
//  StartButtonView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 18/04/2022.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: PROPERTIES
    
    @AppStorage("isOnbaording") var isOnboarding:Bool?

    //MARK: BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HStack
        }//: Button
        .padding(.horizontal , 16)
        .padding(.vertical ,  10)
        .background(
            Capsule().stroke(Color(.white), lineWidth: 1.25)
        )
        .accentColor(.white)

    }
}

struct StartButtonView_Previews: PreviewProvider {
    //MARK: PREVIEW
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
