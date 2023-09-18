//
//  ContentView.swift
//  HEHEHEAW
//
//  Created by KR on 21/8/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            SetupPage()
                .tabItem {
                    VStack{
                        Image(systemName: "person.2.fill")
                        Text("Setup")
                    }
                }
            NextPage()
                .tabItem {
                    VStack{
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
