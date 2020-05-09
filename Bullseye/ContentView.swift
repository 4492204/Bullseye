//
//  ContentView.swift
//  Bullseye
//
//  Created by Mikhail Lashkin on 06.05.2020.
//  Copyright © 2020 Mikhail Lashkin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    

    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    @State var target: Int = Int.random(in: 1...100)
    
    var body: some View {
            VStack {
                Spacer()
                
                // Target row
                HStack {
                    VStack {
                        HStack {
                            Text("Put the bullseye as close you can to:")
                            Text("\(self.target)")
                        }
                    }

                }
                Spacer()
                
                // Slider row
                HStack {
                    Text("1")
                    Slider(value: self.$sliderValue, in: 1...100)
                }
                Spacer()
                
                // Button row
                Button(action: {
                   print("Button pressed")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible) { () -> Alert in
                    let roundedValue: Int = Int(self.sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message: Text(
                    "The slider's value is \(roundedValue).\n" +
                        "Your scored \(self.pointsForCurrentRound()) points this round."
                    ), dismissButton: .default(Text("Awesome")))
                    
                }
                Spacer()
                
                // Score row
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(/*@START_MENU_TOKEN@*/"Start over"/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    Text("Score:")
                    Text("999999")
                    Spacer()
                    Text("Round:")
                    Text("999")
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Info")
                    }
                }
                .padding(.bottom, 20)
        }
        
        
    }
    func pointsForCurrentRound() -> Int {
        
        let roundedValue: Int = Int(self.sliderValue.rounded())
        let difference: Int = abs(self.target - roundedValue)
        let awardedPoints: Int = 100 - difference
        return awardedPoints
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}

