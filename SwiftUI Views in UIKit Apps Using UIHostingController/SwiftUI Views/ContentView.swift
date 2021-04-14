//
//  ContentView.swift
//  SwiftUI Views in UIKit Apps Using UIHostingController
//
//  Created by chenzhizs on 2021/04/14.
//

import SwiftUI

class ContentViewDelegate: ObservableObject {
    @Published var name : String = ""
}

struct ContentView: View {
    
    @ObservedObject var delegate : ContentViewDelegate
    
    var body: some View {
        VStack{
            
            TextField("Enter name", text: self.$delegate.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(delegate: ContentViewDelegate())
    }
}
