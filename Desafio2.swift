//
//  Desafio2.swift
//  Hackatruck
//
//  Created by Turma02-Backup on 18/09/24.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
        HStack{
            VStack{
                Image(.linder)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 300)
            }
            VStack{
                Text("Alguma dúvida?")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.blue)
                
                Text("nao?")
                    .font(.title)
                    .foregroundStyle(.red)
                Text("Beleza :(")
                    .font(.title)
                    .foregroundStyle(.purple)
            }
        }
    }
}

#Preview {
    Desafio2()
}
