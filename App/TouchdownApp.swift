//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
