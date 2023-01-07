//
//  ContentView.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
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
struct ContentView: View {
    @ObservedObject var itemList = BillItems()
   
    var body: some View {
       
        ZStack{
            Color("backgroundColor").ignoresSafeArea()
            VStack{
                TotalSum(itemList: itemList)
                Divider()
                BillSplit(itemList: itemList)
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
