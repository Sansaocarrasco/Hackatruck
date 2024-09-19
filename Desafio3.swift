//
//  Desafio3.swift
//  Hackatruck
//
//  Created by Turma02-Backup on 18/09/24.
//

import SwiftUI

struct Desafio3: View {
    var body: some View {
        HStack{
            
            VStack{
                Image(.linder)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).padding(1)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            VStack{
                HStack{
                    VStack{
                        Text("8")
                        Text("posts")}
                    VStack{
                        Text("12k")
                        Text("Seguidores")
                    }
                    VStack{
                        Text("2k")
                        Text("Seguindo")
                    }
                }
                HStack{
                    
                    Text("Editar Perfil")
                }.background(.gray)
            }
            
        }
       
        
        Spacer()
    }
}

#Preview {
    Desafio3()
}
