//
//  ContentView.swift
//  Lab01
//
//  Created by CHEBIHI FAYCAL on 5/5/2023.
//

import SwiftUI

let MAX_ATTEMPT = 5
var cmp = 1
var random_number = Int.random(in: 1..<100)
struct ContentView: View {
    
    @State var number_txt = ""
    @State var response_sys: String = "Response System"
    @State var attempt = String(MAX_ATTEMPT)
    
    var body: some View {
        VStack{
            Text("Random Number")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
                .padding(.all)
            Spacer()
            VStack(alignment: HorizontalAlignment.center){
                
                Text(attempt).font(.largeTitle).padding(.bottom, 50)
                
                TextField("Give a number", text: $number_txt)
                    .multilineTextAlignment(TextAlignment.center)
                    .font(.largeTitle)
                    .padding(.bottom)
                
                HStack(spacing: 30){
                    Button("Submit"){
                        
                        if let number = Int(number_txt) {
                            
                            if(number != random_number && cmp == 5){
                               
                                response_sys = "You LOSE the random number was  \(random_number)"
                            }else{
                                if(number > random_number){
                                    response_sys = "Smaller"
                                }else if (number < random_number){
                                    response_sys = "Bigger"
                                }else{
                                    response_sys = "Excellent !!!"
                                }
                                number_txt = ""
                                attempt = String(MAX_ATTEMPT - cmp)
                                cmp += 1
                            }
                            
                            
                        }
                        
                    }.padding(.bottom).font(.title)
                    
                    Button("Restart"){
                        random_number = Int.random(in: 1..<100)
                        cmp = 1
                        attempt = String(MAX_ATTEMPT)
                        response_sys = "Response System"
                    }.padding(.bottom).font(.title)
                }
                .padding(.all)
                 
                Text(response_sys)
                    .font(.title2)
            }.padding(.bottom, 100)
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
