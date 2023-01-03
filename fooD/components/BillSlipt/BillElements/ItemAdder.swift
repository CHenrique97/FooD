//
//  ItemAdder.swift
//  fooD
//
//  Created by Carlos Henrique on 03/01/23.
//

import SwiftUI
var quantity: Int = 1


struct ItemAdder: View {
    @State private var number: String = ""
    @State var formattedQuantity = "1"
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 0
        return formatter
    }
    func quantFormat(up:Bool) -> Void {
        if (up){
            quantity+=1
        }
        else {
            quantity-=1
        }
        if (quantity<0)
        {
            self.formattedQuantity=("1/"+String(quantity*(-1)))
        }
        else if (quantity==0 || quantity == -1 )
        {
            quantity = -2
            self.formattedQuantity=("1/"+String(quantity*(-1)))
        }
        else
        {
            self.formattedQuantity=(String(quantity))
        }
    }
    var body: some View {
        VStack(){
            HStack(){
                Text(" Price : ")
                TextField("Enter a number", value: $number, formatter: numberFormatter)
            }
            HStack(){
                Text (" Quantity: ")
                Button {
                    quantFormat(up:false)
                } label: {
                    Image(systemName: "minus.circle")
                }
           
                Text (formattedQuantity)
                Button {
                    quantFormat(up:true)
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
        }
    }
    
    struct ItemAdder_Previews: PreviewProvider {
        static var previews: some View {
            ItemAdder()
        }
    }
}
