//
//  ContentView.swift
//  Landmarks
//
//  Created by fergus on 21/05/23.
//

import SwiftUI

/*
 By default, SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout. The second structure declares a preview for that view.
 
 
 modifier = Text("Hello, Ferguss").font(.headline).foregroundColor(.yellow)
 */
 
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
