//
//  ContentView.swift
//  Aula7-Desafio1-Listas
//
//  Created by Turma02-Backup on 24/09/24.
//

import SwiftUI

struct Song: Hashable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

var songs = [
    Song(id: 0, name: "Forro do Lindao", artist: "Linder", capa: "https://images.genius.com/a5a65bdf862648584d30c01b06240a78.484x484x1.jpg"),
    Song(id: 1, name: "Cabeça de gelo", artist: "Dj Rasta", capa: ""),
    Song(id: 2, name: "musica3", artist: "", capa: ""),
    Song(id: 3, name: "musica4", artist: "", capa: ""),
    Song(id: 4, name: "musica5", artist: "", capa: ""),
    Song(id: 5, name: "musica6", artist: "", capa: ""),
]
struct ContentView: View {
    
    @State private var nome: String = ""
    var body: some View {
        
        
        NavigationStack{
            VStack(alignment: .leading){
                
                
                ScrollView{
                    AsyncImage(url: URL(string: "https://i.pinimg.com/236x/1c/6a/9a/1c6a9aad1ef5b71201598fbea3f1d1e5.jpg")){ result in
                        result.image?
                            .resizable()
                            .scaledToFill()
                    }
                    .frame(width: 150, height: 250)
                    
                    HStack{
                        Text("HackaFM")
                            .padding(9)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .frame(width: .infinity)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    HStack{
                        AsyncImage(url: URL(string: "https://i.pinimg.com/236x/1c/6a/9a/1c6a9aad1ef5b71201598fbea3f1d1e5.jpg")){ result in
                            result.image?
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: 30, height: 20)
                        .padding()
                        
                        VStack(alignment: .leading){
                            Text("HackaSong")
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    
                    
                    
                    ForEach(songs, id: \.self) { s in
                        
                        NavigationLink(destination: View2(name: s.name,capa: s.capa, artist: s.artist)){
                            
                            HStack{
                                AsyncImage(url: URL(string: "https://images.genius.com/a5a65bdf862648584d30c01b06240a78.484x484x1.jpg")){ result in
                                    result.image?
                                        .resizable()
                                        .scaledToFill()
                                }
                                .frame(width: 30, height: 45)
                                .padding(10)
                                
                                VStack(alignment: .leading){
                                    Text(s.name)
                                        .foregroundColor(.white)
                                    Text(s.artist)
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                
                                Image(systemName: "ellipsis")
                                    .foregroundStyle(.white)
                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                    }
                    
                }
                
            }
            .frame(maxWidth: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
        }
    }
        
}

#Preview {
    ContentView()
}
