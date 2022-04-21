//
//  SettingsView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 21/04/2022.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnbaording") var isOnboarding:Bool =  true
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    //MARK: SECTION 1
                    GroupBox {
                        Divider().padding(.vertical , 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100, alignment: .center)
                                .cornerRadius(12)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .multilineTextAlignment(.leading)
                                .font(.footnote)
                                
                        }//: HStack
                    } label: {
                        SettingsLabelView(labelText: "Fructis", labelIconName: "info.circle")
                    }//: Group

                    
                    //MARK: SECTION 2
                    GroupBox {
                        Divider().padding(.vertical , 4)
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .multilineTextAlignment(.leading)
                            .font(.footnote)
                            .layoutPriority(1)
                            
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                    
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding()
                            .background {
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                    
                            }
                    } label: {
                        SettingsLabelView(labelText: "CUSTOMIZATION", labelIconName: "paintbrush")
                    }//: Group
                    
                    //MARK: SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "zeyad / Jane")
                        SettingsRowView(name: "Designer", content: "Zeyad Badawy")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI List", linkDestination: "github.com/stars/zeyadBadawy/lists/swiftui")
                        SettingsRowView(name: "Twitter", linkLabel: "@zeyadtaher5", linkDestination: "twitter.com/zeyadtaher5")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "application", labelIconName: "iphone")
                    }//: Group
                    
                }//: VStack
            }//: Scroll
            .navigationTitle("Settings")
            .toolbar(content: {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            })
            .padding()
        }//: Navigation
    }
}
//MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
