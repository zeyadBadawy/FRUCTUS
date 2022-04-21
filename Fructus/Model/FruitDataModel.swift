//
//  FruitDataModel.swift
//  Fructus
//
//  Created by Zeyad Badawy on 18/04/2022.
//

import SwiftUI

struct Fruit:Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
