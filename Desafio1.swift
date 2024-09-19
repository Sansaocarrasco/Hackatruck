//
//  ContentView.swift
//  Desafio1
//
//  Created by Turma02-Backup on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                    Rectangle()
                    .fill(.red)
                    .frame(width: 100.0, height: 100.0)
                Spacer()
                    Rectangle()
                    .fill(.blue)
                    .frame(width: 100.0, height: 100.0)
            }
            
            Spacer()
            
            HStack{
                Rectangle()
                    .fill(.green)
                    .frame(width: 100.0, height: 100.0)
                    
                Spacer()
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100.0, height: 100.0)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
