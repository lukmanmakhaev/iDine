//
//  CheckoutVIew.swift
//  iDine
//
//  Created by Lukman Makhaev on 08.03.2023.
//

import SwiftUI

struct CheckoutVIew: View {
    @EnvironmentObject var order: Order
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = "Cash"
    
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection:  $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutVIew_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutVIew()
            .environmentObject(Order())
    }
}
