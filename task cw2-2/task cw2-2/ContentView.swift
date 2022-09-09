//
//  ContentView.swift
//  task cw2-2
//
//  Created by Abdulaziz Albalool on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var value = ""
   
    var body: some View {
        ZStack{
            VStack{
                Text("محول العملات العجيب!")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                    .font(.largeTitle)
              
   
                TextField("العملة بالدينار", text: $value)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                Spacer()
                HStack{
                    Text("🇺🇸")
                    Text(String(format: "$%.2f" , (3.28 * (Double(value) ?? 0))))
                    .fontWeight(.light)                }
                HStack{
                    Text("🇬🇧")
                    Text(String(format: "£%.2f" , (2.46 * (Double(value) ?? 0))))
                    .fontWeight(.light)                 }
              
                HStack{
                    Text("🇪🇺")
                    
                    Text(String(format: "€%.2f" , (2.70 * (Double(value) ?? 0))))
                    .fontWeight(.light)            }
                Spacer()
        Image("currency")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
