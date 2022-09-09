//
//  ContentView.swift
//  ak
//
//  Created by Abdulaziz Albalool on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    
@State var name = ""
    @State var age = ""
    @State var emoji = "ques"
    
    var body: some View {
      
        ZStack{
            VStack{
                Text("ما هو المسار المفضل لديك")
                    .font(.title)
                Image(emoji)
                    .resizable()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .frame(width: 100, height: 200)
                Spacer()
                Spacer()
                VStack{
                Text("IOS")
                    
                        .font(.title)
                    .frame(width: 200)
                    .background(Color.blue) .opacity(0.8)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .padding(1)
                    .onTapGesture {
                        emoji = "ios"
                    }  .onLongPressGesture {
                        emoji = "ques"
                    }
                    VStack{
                    Text("GAMEDEV")
                        .font(.title)
                    .frame(width: 200)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .padding(1)
                    .onTapGesture {
                        emoji = "gamedev"}
                    .onLongPressGesture {
                        emoji = "ques"
                        
                    }
                    }
                    VStack{
                Text("WEB")
                        .font(.title)
                    .frame(width: 200)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .padding(1)
                    .onTapGesture { emoji = "web" }
                    .onLongPressGesture {
                        emoji = "ques"
                    } }
                    
                    VStack{
                    Text("ANDROID")
                        .font(.title)
                        .frame(width: 200)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                        .padding(1)
                        .onTapGesture {
                            emoji = "android"
                        }
                        .onLongPressGesture {
                            emoji = "ques"
                        } }
                    Spacer()
                  
            
                   
                   
              
                
                      }
                      
            .padding()
    }
}
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}

