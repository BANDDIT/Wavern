//
//  InterviewView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 22/06/24.
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
    
    var body : some View{
        VStack{
            Text("\(getHour()) : \(getMinute())").foregroundColor(color).font(.system(size:18,weight:.semibold))
        }.frame(width:109,height:40).background(.neutral).cornerRadius(4)
    }
    
    private func getMinute()->String{
        if(time.minute<10){
            return "0\(time.minute)"
        }
        else{
            return "\(time.minute)"
        }
    }
    
    private func getHour()->String{
        if(time.hour<10){
            return "0\(time.hour)"
        }
        else{
            return "\(time.hour)"
        }
    }
}


struct TellUsMoreView:View{
    @ObservedObject var interviewViewModel:InterviewViewModel
    
    var body : some View{
        VStack(alignment:.leading){
            Spacer()
            Text("Tell us more of your needs").foregroundColor(.neutral600).font(.system(size:14,weight:.semibold))
            Spacer()
            
            ZStack{
                ZStack(alignment:.topLeading){
                    TextEditor(text:$interviewViewModel.tellUsMore).padding(4).foregroundColor(.black).font(.system(size:14,weight:.regular)).colorMultiply(.neutral).onChange(of:interviewViewModel.tellUsMore){
                        if(interviewViewModel.tellUsMore==""){
                            interviewViewModel.tellUs=true
                        }
                    }.onTapGesture{
                        interviewViewModel.tellUs=false
                    }
                    
                    if(interviewViewModel.tellUs && interviewViewModel.tellUsMore==""){
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
    
    var body : some View{
        HStack{
            Picker("", selection: $time.hour){
                ForEach(0...23,id:\.self){ i in
                    if(i<10){
                        Text("0\(i)").tag(i)
                    }
                    else{
                        Text("\(i)").tag(i)
                    }
                }

            }.pickerStyle(.wheel).frame(height:200)
            
            Picker("", selection: $time.minute){
                ForEach(0...59,id:\.self){ i in
                    if(i<10){
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
    @ObservedObject var interviewViewModel:InterviewViewModel

    var body : some View{
        HStack{
            Text("\(txt)").foregroundColor(.neutral500).font(.system(size:16,weight:.medium))
            Spacer()
            Button(action:{
                withAnimation{
                    if (txt=="From"){
                        interviewViewModel.toggleBeginTime()
                    }
                    else{
                        interviewViewModel.toggleEndTime()
                    }
                }
            },label:{
                TimeBoxView(time:time, color:.primaryPurple)

            })
        }.frame(width:345,height:40)
    }
}

struct InterviewSchedule:View{
    @ObservedObject var interviewViewModel:InterviewViewModel
    var body : some View{
        VStack{
            Spacer()
            InterviewScheduleSection(txt:"From",time:$interviewViewModel.time, interviewViewModel: interviewViewModel)
            
            
            if(interviewViewModel.beginTime){
                Spacer()
                InterviewTimePickerView(time:$interviewViewModel.time)
            }
            Spacer()
            
            //Horizontal Line
            VStack{
                Text("")
            }.frame(width:345,height:1.02).background(.neutral300)
            
            Spacer()
            
            InterviewScheduleSection(txt:"To",time:$interviewViewModel.time2, interviewViewModel: interviewViewModel)

            if(interviewViewModel.endTime){
                Spacer()
                InterviewTimePickerView(time:$interviewViewModel.time2)
            }
            
            Spacer()
        }.frame(width:UIScreen.screenWidth,height:169.02+interviewViewModel.extraSchedHeight).background(.white)
    }
}


struct SendRequestView:View{
    @ObservedObject var interviewViewModel:InterviewViewModel
    var body : some View{
        VStack{
            Button(action:{

            },label:{
                VStack{
                    Text("Send Request").foregroundColor(.white).font(.system(size:17,weight:.semibold))
                }.frame(width:361,height:56).background(.primaryPurple).cornerRadius(12)
            })
            .padding(16)
            Spacer()
        }.frame(width:UIScreen.screenWidth,height:128).background(.white)
    }
}

struct InterviewLabelView:View{
    var body : some View{
        HStack{
            Image(systemName:"arrow.backward").foregroundColor(.gray).font(.system(size:17,weight:.regular))
            Text(" ")
            Text("Invite to Interview").foregroundColor(.neutral600).font(.system(size:17,weight:.semibold))
        }
    }
}


struct InterviewView: View {
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var interviewViewModel:InterviewViewModel = InterviewViewModel()
    
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
                        DatePicker("", selection: $interviewViewModel.date,displayedComponents:.date)    .datePickerStyle(.graphical).accentColor(.primaryPurple).background(.white)
                        InterviewSchedule(interviewViewModel:interviewViewModel)
                        TellUsMoreView(interviewViewModel:interviewViewModel)
                    }
 
                }
                
                SendRequestView(interviewViewModel: interviewViewModel)
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
        .toolbar{
            HStack{
                Button(action:{
                    dismiss()
                },label:{
                    InterviewLabelView()
                }).padding([.leading,.top],24)
                Spacer()
            }
            .frame(width:UIScreen.screenWidth)
        }
    }
}

#Preview {
    NavigationStack{
        InterviewView()
    }
}
