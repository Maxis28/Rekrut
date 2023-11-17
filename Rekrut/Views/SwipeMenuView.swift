//
//  SwipeMenu.swift
//  AcademyRecruit
//
//  Created by Jakub Chodara on 06/10/2022.
//

import SwiftUI

struct Home : View{
    
    @State var index = 0
    @State var show = false
    
    var body: some View{
        ZStack {
            //Side Menu
            HStack{
                VStack(alignment: .leading, spacing: 12){
                    VStack {
                        Image(systemName: "studentdesk")
                            .foregroundColor(Color.white)
                        
                        HStack(spacing: 10) {
                            Text("Academy Recruiter")
                                .font(.callout)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                        }.padding(.top, 5)
                        
                        Divider()
                            .frame(width:120,height: 2)
                            .background(.white)
                        
                        HStack(spacing: 10){
                            Text("Menu:")
                                .font(.callout)
                                .fontWeight(.bold)
                            .foregroundColor(.white)
                        }
                        .padding(.horizontal)
                        .padding(.top,10)
                        
                    }
                    
               
                 

                    
                    Button(action: {
                        self.index = 0
                        
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "house.fill")
                                .foregroundColor(self.index == 0 ? Color.white : Color.white)
                            
                            Text("Home")
                                .foregroundColor(self.index == 0 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    .padding(.top,-5)
                    
                    Button(action: {
                        self.index = 1
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "chart.bar.xaxis")
                                .foregroundColor(self.index == 1 ? Color.white : Color.white)
                            
                            Text("Ranking Points")
                                .foregroundColor(self.index == 1 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    
                    Button(action: {
                        self.index = 2
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "globe.europe.africa")
                                .foregroundColor(self.index == 2 ? Color.white : Color.white)
                            
                            Text("Set route to WAT")
                                .foregroundColor(self.index == 2 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    
                    Button(action: {
                        self.index = 3
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "figure.climbing")
                                .foregroundColor(self.index == 3 ? Color.white : Color.white)
                            
                            Text("Fitness Calculators")
                                .foregroundColor(self.index == 3 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        self.index = 4
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "calendar")
                                .foregroundColor(self.index == 4 ? Color.white : Color.white)
                            
                            Text("Calendar")
                                .foregroundColor(self.index == 4 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 4 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        self.index = 5
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "newspaper")
                                .foregroundColor(self.index == 5 ? Color.white : Color.white)
                            
                            Text("News")
                                .foregroundColor(self.index == 5 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 5 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    
 
                    
                    Button(action: {
                        self.index = 6
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "shareplay")
                                .foregroundColor(self.index == 6 ? Color.white : Color.white)
                            
                            Text("Git")
                                .foregroundColor(self.index == 6 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 6 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    Button(action: {
                        self.index = 7
                        //animatingViews
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 10){
                            
                            Image(systemName: "figure.cooldown")
                                .foregroundColor(self.index == 7 ? Color.white : Color.white)
                            
                            Text("Training")
                                .foregroundColor(self.index == 7 ? Color.white : Color.white)
                             
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 7 ? Color.white.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    

                }
                .padding(.top,25)
                .padding(.horizontal)
                
                Spacer(minLength: 0)
            }
            .padding(.top, -300)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            // Main View
            VStack(spacing: 0){
                HStack(spacing: 15){
                    Button(action: {
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 22, height: 18)
                            .foregroundColor(Color.black.opacity(0.4))

                    }
                    Text(self.index == 0 ? "Home" : (self.index == 1 ? "Ranking Points Calculator" : (self.index == 2 ? "Set Route to WAT" : (self.index == 3 ? "Fitness Calculators" :  (self.index == 4 ? "Calendar" : (self.index == 5 ? "News" : (self.index == 6 ? "Git" : "Training")) )) )))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
            
                
                
                GeometryReader{ _ in
                    VStack{
                        if self.index == 0{
                            MainPageView()
                        }else if self.index == 1{
                            RankingPoints()
                        }else if self.index == 2{
                            Map()
                        }else if self.index == 3{
                            FitnessCalc()
                        }else if self.index == 4{
                            CalendarViewProper()
                        }else if self.index == 5{
                            NewsView()
                        }else if self.index == 6{
                            GitView()
                        }else if self.index == 7{
                            TrainingView()
                        }
                    }

                }
                
                
            }
           .background(Color.white)
            //Corner radius
           .cornerRadius(self.show ? 30 : 0)
           //MoveingView
           .scaleEffect(self.show ? 0.9 : 1)
           .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
           //.rotationEffect(.init(degrees: self.show ? -5 : 0))
            
            
        
        }
        .background(Color(UIColor(red: 0.12, green: 0.64, blue: 0.27, alpha: 1.00)))
        .edgesIgnoringSafeArea(.all)
    }
}


