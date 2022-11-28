//
//  AddtoCartDetailView.swift
//  Touchdown
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import SwiftUI

struct AddtoCartDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        } // : BUTTON
        .padding(15)
        .background(Color(red: shop.selectedProduct?.red ?? smampleProduct.red, green: shop.selectedProduct?.green ?? smampleProduct.green, blue: shop.selectedProduct?.blue ?? smampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct AddtoCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddtoCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
