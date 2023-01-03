//
//  BillList.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI



struct BillList: View {
    @ObservedObject var itemList: BillItems
    var body: some View {
        ForEach(itemList.bills,id: \.id) {item in
            BillItem(unit: item.unit, price: item.price)
        }
    }
}

struct BillList_Previews: PreviewProvider {
    

    static var previews: some View {
        let list = BillItems()
        BillList(itemList:list)
    }
}
