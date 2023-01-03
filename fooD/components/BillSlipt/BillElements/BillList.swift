//
//  BillList.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI

struct billStruct {
    let price:Double
    let unit:Double
    let id = UUID()
}
var itemList:[billStruct] = [billStruct(price:  10, unit: 10),billStruct(price:  10, unit: 0.5)]
struct BillList: View {
    
    var body: some View {
        ForEach(itemList,id: \.id) {item in
            BillItem(unit: item.unit, price: item.price)
        }
    }
}

struct BillList_Previews: PreviewProvider {
    static var previews: some View {
        BillList()
    }
}
