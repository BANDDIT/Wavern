//
//  CompletedChallenge.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 20/06/24.
//

import SwiftUI

struct CompletedChallenge: View {
    @State var txt:String="ABC"
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination:InterviewDateView()){
                VStack{
                    Text("Back Home").foregroundColor(.primaryPurple).font(.system(size:17,weight:.semibold))
                }.frame(width:361,height:56).background(.white).cornerRadius(12)
            }
            
            TextEditor(text:$txt).background(.red).frame(width:200,height:200).colorMultiply(.green)
            
            Button(action:{
                if let url = URL(string: "https://www.google.com") {
                    UIApplication.shared.open(url)
                }
            },label:{
                Text("hello wrodl")
            })

        }
    }
}


#Preview {
    CompletedChallenge()
}
