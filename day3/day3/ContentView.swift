//
//  ContentView.swift
//  day3
//
//  Created by Danah A on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var resulte = ""
    @State var grade:String=""
    var body: some View {
        
        ZStack{
            Color.blue
            VStack{
            Text("grading calculator")
            Image("Screen Shot 2022-06-27 at 7.46.33 PM")
                
            TextField("enter your grade", text: $resulte)
                
            Text("calculate")
                .background(Color.yellow)
                .clipShape(Capsule())
                .onTapGesture {
                if Int(resulte)! >= 90 {
                    grade = "excellent"
                
                }
                else if Int(resulte)! <= 80 && Int(resulte)! > 70{
                    grade = "very good"}
                
                else if Int(resulte)! <= 70 && Int(resulte)! > 60{
                    grade = "good"}
                
                else if Int(resulte)! <= 60 && Int(resulte)! > 50
                {grade = "acceptable"}
                
                else {grade="fail"}
            
                }
                Text(grade)

                
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
