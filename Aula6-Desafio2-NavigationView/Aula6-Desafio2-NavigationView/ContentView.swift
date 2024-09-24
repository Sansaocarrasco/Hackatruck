//
//  ContentView.swift
//  Aula6-Desafio2-NavigationView
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("alguma coisa") {
            dismiss()
        }
        .font(.title)
        .padding()
        
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        
        
        NavigationStack{
            
            VStack{
                
                Image(.logo)
                    .resizable()
                    .frame(width: 200, height: 100)
                    .foregroundStyle(.fundo)
                    .colorMultiply(.black)
                    .colorInvert()
                Spacer()
                
                NavigationLink(destination: Modo1View()){
                    Text ("Modo 1")
                }
                .frame(width: 220, height: 70)
                .background(.rosa)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                NavigationLink(destination: Modo2View()){
                    Text ("Modo 2")
                }
    
                .frame(width: 220, height: 70)
                .background(.rosa)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Button("Modo 3") {
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet) {
                            SheetView()
                        }
                .frame(width: 220, height: 70)
                .background(.rosa)
                .foregroundColor(.white)
                .cornerRadius(10)
                Spacer()
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.fundo)
            
        }
    }
}

#Preview {
    ContentView()
}
