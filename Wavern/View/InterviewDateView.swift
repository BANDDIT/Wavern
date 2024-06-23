//
//  InterviewDateView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 23/06/24.
//

import SwiftUI

struct Time{
    var hour:Int
    var minute:Int
    
    init(_ hour:Int, _ minute:Int){
        self.hour = hour
        self.minute = minute
    }
}

struct TimeBoxView:View{
    var time:Time
    var color:Color
    
    @ObservedObject var interviewDateViewModel:InterviewDateViewModel
    
    var body : some View{
        VStack{
            Text("\(interviewDateViewModel.getHour(time)) : \(interviewDateViewModel.getMinute(time))").foregroundColor(color).font(.system(size:18,weight:.semibold))
        }.frame(width:109,height:40).background(.neutral).cornerRadius(4)
    }
}


struct TellUsMoreView:View{
    @ObservedObject var interviewDateViewModel:InterviewDateViewModel
    
    var body : some View{
        VStack(alignment:.leading){
            Spacer()
            Text("Tell us more of your needs").foregroundColor(.neutral600).font(.system(size:14,weight:.semibold))
            Spacer()
            
            ZStack{
                ZStack(alignment:.topLeading){
                    TextEditor(text:$interviewDateViewModel.tellUsMore).padding(4).foregroundColor(.black).font(.system(size:14,weight:.regular)).colorMultiply(.neutral).onChange(of:interviewDateViewModel.tellUsMore){
                        if(interviewDateViewModel.isInputEmpty()){
                            interviewDateViewModel.tellUs=true
                        }
                    }.onTapGesture{
                        interviewDateViewModel.tellUs=false
                    }
                    
                    if(interviewDateViewModel.isNotTyping()){
                        Text("Type Here").foregroundColor(.neutral400).font(.system(size:14,weight:.regular)).padding(.horizontal,8)      .padding(.vertical, 12)
                    }
                }.frame(width:343,height:147).background(.neutral).cornerRadius(12)
            }.frame(width:345,height:149).background(.neutral400).cornerRadius(12)

            Spacer()
        }.frame(width:UIScreen.screenWidth,height:231).background(.white)
    }
}

struct InterviewTimePickerView:View{
    
    @Binding var time:Time
    @ObservedObject var interviewDateViewModel:InterviewDateViewModel

    
    var body : some View{
        HStack{
            Picker("", selection: $time.hour){
                ForEach(0...23,id:\.self){ i in
                    if(interviewDateViewModel.isUnderTen(i)){
                        Text("0\(i)").tag(i)
                    }
                    else{
                        Text("\(i)").tag(i)
                    }
                }

            }.pickerStyle(.wheel).frame(height:200)
            
            Picker("", selection: $time.minute){
                ForEach(0...59,id:\.self){ i in
                    if(interviewDateViewModel.isUnderTen(i)){
                        Text("0\(i)").tag(i)
                    }
                    else{
                        Text("\(i)").tag(i)
                    }                        }
            }.pickerStyle(.wheel).frame(height:200)
        }
    }
}


struct InterviewScheduleSection:View{
    var txt:String
    @Binding var time:Time
    @ObservedObject var interviewDateViewModel:InterviewDateViewModel

    var body : some View{
        HStack{
            Text("\(txt)").foregroundColor(.neutral500).font(.system(size:16,weight:.medium))
            Spacer()
            Button(action:{
                withAnimation{
                    if (interviewDateViewModel.isTextEqualsFrom(txt)){
                        interviewDateViewModel.toggleBeginTime()
                    }
                    else{
                        interviewDateViewModel.toggleEndTime()
                    }
                }
            },label:{
                if interviewDateViewModel.isTextEqualsFrom(txt){
                    TimeBoxView(time:time,color:interviewDateViewModel.timeColor,interviewDateViewModel: interviewDateViewModel)
                }
                else{
                    TimeBoxView(time:time,color:interviewDateViewModel.time2Color,interviewDateViewModel: interviewDateViewModel)
                }


            })
        }.frame(width:345,height:40)
    }
}

struct InterviewSchedule:View{
    @ObservedObject var interviewDateViewModel:InterviewDateViewModel
    var body : some View{
        VStack{
            Spacer()
            InterviewScheduleSection(txt:"From",time:$interviewDateViewModel.time, interviewDateViewModel: interviewDateViewModel)
            
            
            if(interviewDateViewModel.beginTime){
                Spacer()
                InterviewTimePickerView(time:$interviewDateViewModel.time, interviewDateViewModel: interviewDateViewModel)
            }
            Spacer()
            
            //Horizontal Line
            VStack{
                Text("")
            }.frame(width:345,height:1.02).background(.neutral300)
            
            Spacer()
            
            InterviewScheduleSection(txt:"To",time:$interviewDateViewModel.time2, interviewDateViewModel: interviewDateViewModel)

            if(interviewDateViewModel.endTime){
                Spacer()
                InterviewTimePickerView(time:$interviewDateViewModel.time2,interviewDateViewModel: interviewDateViewModel)
            }
            
            Spacer()
        }.frame(width:UIScreen.screenWidth,height:169.02+interviewDateViewModel.extraSchedHeight).background(.white)
    }
}


struct InterviewDateLabelView:View{
    var body : some View{
        HStack{
            Image(systemName:"arrow.backward").foregroundColor(.gray).font(.system(size:17,weight:.regular))
            Text(" ")
            Text("Invite to Interview").foregroundColor(.neutral600).font(.system(size:17,weight:.semibold))
        }
    }
}


struct InterviewDateView: View {
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var interviewDateViewModel:InterviewDateViewModel = InterviewDateViewModel()
    
    var body: some View {
        ZStack{
            Color.neutral
            VStack(spacing:5){
                VStack{
                    Text("")
                    //WhiteSpaceForToolBar
                }.frame(width:UIScreen.screenWidth,height:120).background(.white)
                
                ScrollView{
                    VStack(spacing:7){
                        DatePicker("", selection: $interviewDateViewModel.date,displayedComponents:.date)    .datePickerStyle(.graphical).accentColor(.primaryPurple).background(.white)
                        InterviewSchedule(interviewDateViewModel:interviewDateViewModel)
                        TellUsMoreView(interviewDateViewModel:interviewDateViewModel)
                    }
 
                }
                
                VStack{
                    Button(action:{

                    },label:{
                        
                        //Ini ganti jadi Button dishared
                        VStack{
                            Text("Send Request").foregroundColor(.white).font(.system(size:17,weight:.semibold))
                        }.frame(width:361,height:56).background(.primaryPurple).cornerRadius(12)
                    })
                    .padding(16)
                    Spacer()
                }.frame(width:UIScreen.screenWidth,height:128).background(.white)
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
        .toolbar{
            HStack{
                Button(action:{
                    dismiss()
                },label:{
                    InterviewDateLabelView()
                }).padding([.leading,.top],24)
                Spacer()
            }
            .frame(width:UIScreen.screenWidth)
        }
    }
}

#Preview {
    NavigationStack{
        InterviewDateView()
    }
}
