//
//  Constant.swift
//  Touchdown
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import SwiftUI

// DATA
let players : [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products : [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let smampleProduct : Product = products[0]
// COLOR
let colorbackground : Color = Color("ColorBackground")
let colorGray : Color = Color(UIColor.systemGray4)
// LAYOUT
let columnSpacing : CGFloat = 10
let rowSpacing : CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
// API
// IMAGE
// FONT
// STRING
// MISC
