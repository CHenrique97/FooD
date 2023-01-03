//
//  BillItem.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI

struct BillItem: View {
    let unit:Double
    let price:Double
    var body: some View {
        HStack(){
            VStack{
                Image(systemName: "fork.knife.circle").font(.system(size: 40, weight: .light))
            }.padding(.horizontal, 38.0).frame(minWidth: 100,minHeight: 60)
            Divider()
            VStack(){
                Text("\(price.formatted(.currency(code: "USD"))) * \(unit.formatted())")
                    .padding(.leading, -10.0)
            Text("Total Price: \((price*unit).formatted(.currency(code: "USD")))")
            }.padding(.horizontal, 11.0).frame(maxWidth: .infinity,minHeight: 60)
        }.frame(maxHeight: 70).border(.gray)

    }
}

struct BillItem_Previews: PreviewProvider {
    static var previews: some View {
        BillItem(unit:6,price:100)
    }
}
