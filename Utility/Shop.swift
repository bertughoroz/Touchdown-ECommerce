//
//  Shop.swift
//  Touchdown
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct : Bool = false
    @Published var selectedProduct: Product? = nil
}
