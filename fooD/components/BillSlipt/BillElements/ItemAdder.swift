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
    @ObservedObject var itemList: BillItems = BillItems()

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
        else if ((quantity==0 || quantity == -1) && !up)
        {
            quantity = -2
            self.formattedQuantity=("1/"+String(quantity*(-1)))
        }
        else {
            self.formattedQuantity=(String(quantity))
        }
        
        if ((quantity == -1) && up)
        {
            quantity = 1
            self.formattedQuantity=(String(quantity))
        }

           
      

    }
    func addList() {
        print(1.0/(4.0))
        if (quantity<0)
        {
            itemList.bills.append(Bill(price: Double(number) ?? 0.00, unit: Double(1.0/Double(quantity * -1))))
        } else {
            itemList.bills.append(Bill(price: Double(number) ?? 0.00, unit: Double(quantity)))
        }
        print( itemList.bills)
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(){
                Text(" Price : ")
                    .padding(.leading, 10.0)
                TextField("Enter a number", text: $number)
                Button {
                    addList()
                } label: {
                    Image(systemName: "plus.circle")
                        .padding(.trailing, 30.0).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                }
            }
            HStack(alignment: .top){
                Text (" Quantity: ")
                    .padding(.leading, 10.0)
                Button {
                    quantFormat(up:false)
                } label: {
                    Image(systemName: "minus.circle")
                }.foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
           
                Text (formattedQuantity)
                Button {
                    quantFormat(up:true)
                } label: {
                    Image(systemName: "plus.circle")
                }.foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            }
        }
    }
    
    struct ItemAdder_Previews: PreviewProvider {
        static var previews: some View {
            let list = BillItems()
            ItemAdder( itemList:list )
        }
    }
}
