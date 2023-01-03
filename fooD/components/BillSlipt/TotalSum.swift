//
//  TotalSum.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI

struct  TotalSum: View {
    var totalPrice: Double
    let totalTip: Int
    var tipPercentage: Int
    var body:some View {
        HStack(){
            VStack{
                Text("Total sum :")
                    .padding(.bottom, -3.0)
                Text((self.totalPrice.formatted(.currency(code: "USD"))))
            }.padding(.horizontal, 20.0).frame(minWidth: 100,minHeight: 60)
            Divider()
            VStack(){
                Text("Total tip : \(self.totalTip.formatted(.currency(code: "USD")))")
                    .padding(.leading, -40.0)
                Text("Tip percentage : % \(self.tipPercentage.description)")
            }.padding(.horizontal, 11.0).frame(maxWidth: .infinity,minHeight: 60)
        }.frame(maxHeight: 70)
    }
}

struct TotalSum_Preview: PreviewProvider {
    static var previews: some View {
        TotalSum(totalPrice:1000,totalTip: 10,tipPercentage: 10)
    }
}
