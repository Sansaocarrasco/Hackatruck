//
//  View2.swift
//  Aula7-Desafio1-Listas
//
//  Created by Turma02-Backup on 24/09/24.
//

import SwiftUI

struct View2: View {
    
    @State var name: String = ""
    @State var capa: String = ""
    @State var artist: String = ""
    
    
    var body: some View {
        
        VStack(){
            Spacer()
            
                AsyncImage(url: URL(string: capa)){ result in
                    result.image?
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 150, height: 250)
                
                HStack{
                    Text(name)
                        .foregroundColor(.white)
                }
                HStack{
                    Text(artist)
                        .foregroundColor(.white)
                }
            
            HStack{
                Image(systemName: "shuffle")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 30, height: 30)
                    .padding()
                Image(systemName: "backward.end.fill")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 30, height: 30)
                    .padding()
                Image(systemName: "play.fill")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 40, height: 40)
                    .padding()
                Image(systemName: "forward.end.fill")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 30, height: 30)
                    .padding()
                Image(systemName: "repeat")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 30, height: 30)
                    .padding()
                
            }
            .padding(10)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
    }
    
}
#Preview {
    View2()
}
