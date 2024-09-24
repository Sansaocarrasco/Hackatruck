//
//  ContentView.swift
//  Aula6-TabView-Navigation
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            PinkView()
                .tabItem{
                    Label("Rosa", systemImage:"paintbrush")
                }
            BlueView()
                .tabItem{
                    Label("Azul", systemImage:"paintbrush.pointed")
                }
            GrayView()
                .tabItem{
                    Label("Cinza", systemImage:"paintpalette")
                }
        
            ListView()
                .tabItem{
                    Label("Lista", systemImage:"list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
