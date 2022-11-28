//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name :String
    let image: String
}
