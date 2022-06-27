//
//  ContentView.swift
//  day3.2
//
//  Created by Danah A on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var count1=0
    @State var count2=0
    @State var count3=0
    
    var body: some View {
        VStack{
            HStack{
                Text("استغفر الله")
                    .padding()
                ExtractedView(count: $count1)
                    .padding()
                    }
            HStack{
                Text("سبحان الله وبحمده")
                    .padding()
                ExtractedView(count: $count2)
                    .padding()
                    }
            HStack{
                Text("سبحان الله العظيم")
                    .padding()
                ExtractedView(count: $count3)
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

struct ExtractedView: View {
    @Binding var count:Int
    var body: some View {
        Text("\(count)")
            .frame(width: 100, height: 100)
            .background(Color.green)
            .clipShape(Circle())
            .onTapGesture {
                count = count + 1
            }
    }
}
