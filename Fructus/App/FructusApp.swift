//
//  FructusApp.swift
//  Fructus
//
//  Created by Zeyad Badawy on 18/04/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnbaording") var isOnboarding:Bool =  true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
