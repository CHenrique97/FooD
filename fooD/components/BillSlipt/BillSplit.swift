//
//  BillSplit.swift
//  fooD
//
//  Created by Carlos Henrique on 03/01/23.
//

import SwiftUI
import Combine

struct Bill{
    let price:Double
    let unit:Double
    let id = UUID()
}

class BillItems: ObservableObject {


  @Published var bills: [Bill] = [Bill(price:  10, unit: 10)]


}

struct BillSplit: View {
    @StateObject var itemList = BillItems()
    var body: some View {
        VStack(){
            BillList(itemList: itemList)
            Spacer()
            ItemAdder()
        }
    }
}

struct BillSplit_Previews: PreviewProvider {
    static var previews: some View {
        BillSplit()
    }
}
