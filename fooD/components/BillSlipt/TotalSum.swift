//
//  TotalSum.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI


func tipCalculations(list:BillItems,tipPercentage:String) -> [Double]{
        let totalPricePreTip=list.bills.reduce(0.0){(result,item)  in
        result + (item.unit * item.price)
    }
    let tipConverted = Double(tipPercentage) ?? 0.00
    var totalTip = totalPricePreTip*(tipConverted/100)
    var totalPrice = totalPricePreTip + totalTip
    return[ totalTip,totalPrice]
    }
struct  TotalSum: View {
    @ObservedObject var itemList: BillItems = BillItems()
    @State  var totalPrice: Double = 0.0
    @State var totalTip: Double = 0.0
    @State private var tipDesired: String = ""
    var body:some View {
        HStack(){

            VStack{
                Text("Total sum :")
                    .padding(.bottom, -3.0)
                Text((totalPrice.formatted(.currency(code: "USD"))))
            }.padding(.horizontal, 20.0).frame(minWidth: 100,minHeight: 60)
            Divider()
            VStack(){
                Text("Total tip : \(totalTip.formatted(.currency(code: "USD")))")
                    .padding(.leading, -40.0)
                HStack{
                    Text("Tip percentage:")
                    TextField(" % ", text: $tipDesired)
                        .frame(width: 50.0)
                }
                .padding(.trailing, -8.0)
            }.frame(maxWidth: .infinity,minHeight: 60)
        }.frame(maxHeight: 70).onChange(of:itemList.bills){_ in
            self.totalTip = tipCalculations(list:itemList,tipPercentage:tipDesired)[0]
            self.totalPrice = tipCalculations(list:itemList,tipPercentage:tipDesired)[1]
        }
    }
}

struct TotalSum_Preview: PreviewProvider {
    static var previews: some View {
        TotalSum()
    }
}
