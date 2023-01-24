//
//  MainScreen.swift
//  fooD
//
//  Created by Carlos Henrique on 21/01/23.
//

import SwiftUI

struct Bill: Codable, Equatable {
    let price:Double
    let unit:Double
    var id = UUID()
    static func == (lhs: Bill, rhs: Bill) -> Bool {
      return lhs.id == rhs.id
    }
}

class BillItems: ObservableObject {


  @Published var bills: [Bill] = []


}



struct MainScreen: View {
    @ObservedObject var itemList = BillItems()
    var body: some View {
        VStack{
            TotalSum(itemList: itemList)
            Divider()
            BillSplit(itemList: itemList)
            Spacer()

        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
