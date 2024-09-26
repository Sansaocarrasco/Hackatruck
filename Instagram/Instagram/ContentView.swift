//
//  ContentView.swift
//  Spotify
//
//  Created by Turma02-Backup on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    
    
        var body: some View {
            
            HStack{
                Spacer()
                Text("Username")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                Image(systemName: "gobackward")
                Spacer()
                Image(systemName: "list.dash")
                Spacer()
            }
            
            HStack(spacing: 0){
                Spacer()
                VStack{
                    Image(.neymar)
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).padding(1)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                }
                VStack{
                    HStack{
                        Spacer()
                        VStack{
                            Text("8")
                                .bold()
                                .font(.title3)
                            Text("posts")
                                .font(.caption)
                        }
                        Spacer()
                        VStack{
                            Text("12k")
                                .bold()
                                .font(.title3)
                            Text("Seguidores")
                                .font(.caption)
                        }
                        Spacer()
                        VStack{
                            Text("2k")
                                .bold()
                                .font(.title3)
                            Text("Seguindo")
                                .font(.caption)
                        }
                        Spacer()
                    }
                    VStack{
                        
                        Text("Editar Perfil")
                            .font(.title3)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            
                            
                    }.background(.gray)
                        .cornerRadius(5)
                        .opacity(0.7)
                        .frame(width: 250, height: 40)
                }
                    .padding()
                
            }
            
            HStack(){
                Text("Neymar Mendigo")
                    .font(.title3)
                
                Spacer()
                
            }
            
            HStack(){
                Text("Ex jogador do Al ASHIDSAHDIHSIDh")
                Spacer()
            }
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 1)
                .opacity(0.2)
            Rectangle()
                .fill(.white)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 4)
            
            HStack{
                Spacer()
                Image(.icon1)
                    .resizable()
                    .frame(width: 25, height: 25)
                Spacer()
                Image(.icon2)
                    .resizable()
                    .frame(width: 25, height: 25)
                Spacer()
                Image(.icon3)
                    .resizable()
                    .frame(width: 25, height: 25)
                Spacer()
                
            }
            
            VStack(spacing: 3){
                ForEach(1...3, id: \.self) { i in
                    HStack (spacing:0) {
                        AsyncImage(url: URL(string: "https://i.pinimg.com/736x/b1/7b/a8/b17ba8ac5b6092ce815fbbdb3508a2e0.jpg")){ result in
                            result.image?
                                .resizable()
                                .frame(width: 130, height: 130)
                                .scaledToFill()
                        }
                        .background(.green)
                        
                        AsyncImage(url: URL(string: "https://i.pinimg.com/736x/b1/7b/a8/b17ba8ac5b6092ce815fbbdb3508a2e0.jpg")){ result in
                            result.image?
                                .resizable()
                                .frame(width: 130, height: 130)
                                .scaledToFill()
                        }
                        .background(.green)
                        
                        AsyncImage(url: URL(string: "https://i.pinimg.com/736x/b1/7b/a8/b17ba8ac5b6092ce815fbbdb3508a2e0.jpg")){ result in
                            result.image?
                                .resizable()
                                .frame(width: 130, height: 130)
                                .scaledToFill()
                        }
                        
                    }
                }
            }
            Spacer()

    }
}

#Preview {
    ContentView()
}
