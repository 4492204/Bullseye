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
    //Remember to delete this later on!
    //@State var whosThereIsVisible: Bool = true
    
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
            /*Button(action: {
                self.whosThereIsVisible=true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Knock Knock"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $whosThereIsVisible) { () ->
                Alert in
                return Alert(title: Text("Who's there?"), message: Text("Little old lady"),
                             dismissButton: .default(Text("Little old lady who !?")))
        }*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
