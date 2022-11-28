//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Bertuğ Horoz on 28.11.2022.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                //  RATINGS + SIZES
                RatingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? smampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } // : SCROLL
                // QUANTITY + FAVOURITE
                QuantityFavouriteDeteilView()
                    .padding(.vertical, 10)
                // ADD TO CART
                AddtoCartDetailView()
                    .padding(.bottom, 20)
            } // : VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                    .frame(minWidth: UIScreen.main.bounds.width + 4)
            )
        } // : VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? smampleProduct.red, green: shop.selectedProduct?.green ?? smampleProduct.green, blue: shop.selectedProduct?.blue ?? smampleProduct.blue).ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
