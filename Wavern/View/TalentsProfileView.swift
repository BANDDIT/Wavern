//
//  TalentsProfileView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 19/06/24.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct TalentsProfileView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack{
            Image("DummyTalentsProfile")
            Spacer()
            VStack{
                HStack{
                    Text("Jesslyn Devaline")
                    Text(" ")
                    
                }
            }
        }.ignoresSafeArea()
            .navigationBarBackButtonHidden().toolbar{
                HStack{
                    Button(action:{
                        dismiss()
                    },label:{
                        Image(systemName:"arrow.backward").foregroundColor(.white)
                    }).padding([.leading,.top],24)
                    Spacer()
                }
                .frame(width:UIScreen.screenWidth)
            }
    }
}




struct EmploymentTypeView:View{
    
    enum employmentType{
        case full_time
        case part_time
    }
    
    var type:employmentType
    @State var text:String=""
    @State var bgColor:Color=Color.clear
    @State var txtColor:Color=Color.clear
    
    var body : some View{
        VStack{
            Text(text).font(.system(size:13,weight:.medium)).foregroundColor(txtColor).frame(width:72,height:24).background(bgColor).cornerRadius(200)
        }
        .onAppear{
            switch(type){
            case .full_time:
                text="Full-time"
                bgColor = .success100
                txtColor = .success600

            case .part_time:
                text="Part-time"
                bgColor = .info100
                txtColor = .info600
            }
        }
    }
    
    
}

#Preview {
    /*
    NavigationStack{
        TalentsProfileView()
    }
     */
    EmploymentTypeView(type: .part_time)
}
