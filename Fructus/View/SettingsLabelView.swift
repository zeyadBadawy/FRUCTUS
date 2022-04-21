//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 21/04/2022.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: PROPERTIES
    
    var labelText:String
    var labelIconName:String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelIconName)
            
        }//: HStack
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frucits", labelIconName: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
