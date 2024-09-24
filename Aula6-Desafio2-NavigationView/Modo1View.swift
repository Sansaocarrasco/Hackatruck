//
//  Modo1View.swift
//  Aula6-Desafio2-NavigationView
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct Modo1View: View {

    var body: some View {
        
        
        NavigationStack{
            
            VStack{
                
                Text("Modo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Spacer()
                
                VStack{
                    Text ("Nome: Tiago")
                    Text ("Sobrenome: Pereira")
                }
                .frame(width: 220, height: 120)
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
    Modo1View()
}
