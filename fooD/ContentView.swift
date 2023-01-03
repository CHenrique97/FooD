//
//  ContentView.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("backgroundColor").ignoresSafeArea()
            VStack{
                TotalSum(totalPrice:1000,totalTip: 10,tipPercentage: 10)
                Divider()
                BillList()
                Spacer()
                Spacer()
                Divider()
                Footer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
            .previewDisplayName("iPhone 14 Pro Max")
    }
}
