//
//  AbouView.swift
//  Bullseye
//
//  Created by Mikhail Lashkin on 20.05.2020.
//  Copyright © 2020 Mikhail Lashkin. All rights reserved.
//

import SwiftUI

struct AbouView: View {
    var body: some View {
        VStack {
        Text("🎯 Bullseye 🎯")
        Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.")
        Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.")
        Text("Enjoy!")
        }
    }
}

struct AbouView_Previews: PreviewProvider {
    static var previews: some View {
        AbouView().previewLayout(.fixed(width: 896, height: 414))
    }
}
