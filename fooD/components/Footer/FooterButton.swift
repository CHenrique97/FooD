//
//  FooterButton.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI


struct FooterButton: View {
    let iconName: String
    let callbackFunction: () -> Void
    var body: some View {
        Button(action: {
            self.callbackFunction()
        } ,label: {
           
            Image(systemName: iconName)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .font(.system(size: 40, weight: .light))
                        .frame(height:100).scaledToFit()
                
            
            
        }).controlSize(.large)
    }
}


struct Previews_FooterButton_Previews: PreviewProvider {
    static var previews: some View {
        FooterButton(iconName: "gear") {
            print("pingsa")
        }
    }
}
