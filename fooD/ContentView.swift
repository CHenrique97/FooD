//
//  ContentView.swift
//  fooD
//
//  Created by Carlos Henrique on 29/12/22.
//

import SwiftUI


struct FontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundColor(.black)
    }
}

struct ContentView: View {
  
   
    var body: some View {
       
        ZStack{
            Color("backgroundColor").ignoresSafeArea()
            VStack{
                MainScreen()
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
