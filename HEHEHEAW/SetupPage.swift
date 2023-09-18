//
//  SetupPagge.swift
//  HEHEHEAW
//
//  Created by KR on 28/8/23.
//

import SwiftUI

struct SetupPage: View {
    @State var e = true
    @State var count = 0
    @State var languageSelection = ""
    @State var alertShown = false
    var body: some View {
        NavigationStack{
            VStack{
                Toggle("Enable high contrast", isOn: $e)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                Toggle("Enable dark mode", isOn: $e)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .contextMenu(ContextMenu(menuItems: {
                        Text("Auto-detect")
                        Button(){
                            print("hi")
                        } label: {
                            Text("Enable auto-detect theme")
                        }
                    }))
                Stepper("Font size", value: $count)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                Spacer()
                Picker("Choose a language", selection: $languageSelection){
                    Button{
                        print("hi lmao")
                    } label: {
                        Text("Chinese")
                    }
                    
                    Button{
                        print("hi lmao")
                    } label: {
                        Text("English")
                    }
                }
                .pickerStyle(.menu)
                
                Button{
                    alertShown = true
                } label: {
                    Text("Continue")
                }
                .buttonStyle(.borderedProminent)
                .navigationTitle("Setup")
                .alert( Text("Continue?"), isPresented: $alertShown) {
                    Button{
                        print("nosir")
                    } label: { Text("Back")}
                    Button{
                        print("yessir")
                    } label: { Text("Continue")}
                } message: {
                    Text("Continue? You can always go back anytime u want"
                    )
                }
            }
        }
    }
}

#Preview {
    SetupPage()
}
