//
//  View2.swift
//  Aula7-Desafio1-Listas
//
//  Created by Turma02-Backup on 24/09/24.
//

import SwiftUI

struct View2: View {
    
    @State var name: String = "nome"
    @State var capa: String = "https://i.pinimg.com/236x/1c/6a/9a/1c6a9aad1ef5b71201598fbea3f1d1e5.jpg"
    @State var artist: String = "adam sandler"
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            Spacer()
            
            ScrollView{
                AsyncImage(url: URL(string: capa)){ result in
                    result.image?
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 150, height: 250)
                
                HStack{
                    AsyncImage(url: URL(string: capa)){ result in
                        result.image?
                            .resizable()
                            .scaledToFill()
                    }
                    .frame(width: 30, height: 20)
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text(name)
                            .bold()
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                
            }
            
        }
        .frame(maxWidth: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
    }
    
}
#Preview {
    View2()
}
