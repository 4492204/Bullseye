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
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to my first app!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                Button(action: {
                   print("Button pressed")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible) { () ->
                    Alert in
                    return Alert(title: Text("Hello there!"), message: Text("This is my first popup"), dismissButton: .default(Text("Awesome")))
                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
