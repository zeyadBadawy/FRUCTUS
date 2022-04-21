//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 21/04/2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: PROPERTIES
    
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    
    
    var body: some View {
        VStack {
            Divider().padding(.vertical , 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                }else {
                    EmptyView()
                }
                
                if let link = linkLabel , let description = linkDestination {
                    HStack {
                        Link(link, destination: URL(string: "https://\(description)")!)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    }
                    .font(.footnote)
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Develoepr", content: "Jone/Jane")
                .previewLayout(.sizeThatFits)
            .padding()
            SettingsRowView(name: "Website" , linkLabel:"Google"  , linkDestination: "google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
