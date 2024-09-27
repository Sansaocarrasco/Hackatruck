//
//  Desafio4.swift
//  Hackatruck
//
//  Created by Turma02-Backup on 19/09/24.
//

import SwiftUI

struct Desafio4: View {
    @State private var username: String = " "
    @State private var showingAlert = false
    var body: some View {
        
        ZStack{
            Image(.fundoc)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .opacity(0.2)
            .blur(radius: 3)
            
            VStack{
                Text("Bem vindo, \(username)")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                TextField("Bem Vindo, ", text: $username)
                    .backgroundStyle(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .multilineTextAlignment(.center)
                Spacer()
                Image(.logo)
                    .resizable()
                    .frame(width: 250, height: 100)
                Image(.truck)
                    .resizable()
                    .frame(width: 250, height: 100)
                Spacer()
                Spacer()
                    
                Button("Enviar"){
                    showingAlert = true
                    
                }
                .alert(isPresented: $showingAlert){
                    Alert(
                        title: Text("Alerta!"),
                        message: Text("Voce ira iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos la"))
                        
                    )
                    
                }
                
                
            }
            
        }
        
    }
}

#Preview {
    Desafio4()
}
