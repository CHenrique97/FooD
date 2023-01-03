//
//  Footer.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI

struct Footer: View {
    func doSomething() {
        print("do something")
    }
    var body:some View {
        VStack(){
            HStack(alignment: .top){
                FooterButton(iconName:"gear" , callbackFunction:self.doSomething)
                Spacer()
                FooterButton(iconName:"divide.square" , callbackFunction:self.doSomething)
                Spacer()
                FooterButton(iconName:"person" , callbackFunction:self.doSomething)
            }.padding(.horizontal, 20.0).frame(maxWidth: .infinity,minHeight: 60)
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer().previewLayout(.sizeThatFits)
    }
}
