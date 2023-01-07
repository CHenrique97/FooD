//
//  BillSplit.swift
//  fooD
//
//  Created by Carlos Henrique on 03/01/23.
//

import SwiftUI
import Combine



struct BillSplit: View {
    @ObservedObject var itemList: BillItems = BillItems()
    var body: some View {
        VStack(){
            BillList(itemList: itemList)
            Spacer()
            ItemAdder( itemList: itemList)

        }
    }
}

struct BillSplit_Previews: PreviewProvider {
    static var previews: some View {
        BillSplit()
    }
}
