//
//  Modo22View.swift
//  Aula6-Desafio2-NavigationView
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct Modo22View: View {
    @State var username: String = " "

    var body: some View {
        
        
        NavigationStack{
            
            VStack{
                
                Text("Modo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Spacer()
                
                VStack{
                    Text("Bem vindo, \(username)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .multilineTextAlignment(.center)
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
    Modo22View()
}
