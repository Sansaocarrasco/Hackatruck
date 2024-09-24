//
//  Modo2View.swift
//  Aula6-Desafio2-NavigationView
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct Modo2View: View {
    @State private var username: String = " "
    @State private var screenAux = false
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                Text("Modo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Spacer()
                
                VStack{
                    Spacer()
                    TextField("Digite seu nome", text: $username)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    Text("Bem vindo, \(username)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    NavigationLink(destination: Modo22View(username: self.username)){
                        Text ("Acessar Tela")
                    }
        
                    .frame(width: 220, height: 70)
                    .background(.rosa)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .frame(width: 320, height: 220)
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
    Modo2View()
}
