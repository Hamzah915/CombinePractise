//
//  ProductsView.swift
//  CombinePractise
//
//  Created by Hamzah Azam on 28/06/2023.
//

import SwiftUI

struct ProductsView: View {
    
    @StateObject var productViewModel = ProductViewModel(manager: NetworkManager())
    
    var body: some View {
        VStack {
            List(productViewModel.productList){ product in
                VStack{
                    Text(product.title)
                    Text(product.brand)
                }
            }
        }.onAppear(){
            productViewModel.getProductList(apiUrl: "https://dummyjson.com/products")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
