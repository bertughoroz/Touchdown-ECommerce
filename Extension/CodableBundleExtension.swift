//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // LOCATE THE JSON FILE
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        // CREATE A PROPERTY FOT THE DATA
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // CREATE A DECODER
        let decoder = JSONDecoder()
        // CREATE A PROPERTY FOR THE DECODED DATA
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // RETURN THE READY-TO-USE DATA
        return decodedData
    }
}
