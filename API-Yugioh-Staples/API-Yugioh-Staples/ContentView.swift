//
//  ContentView.swift
//  API-Yugioh-Staples
//
//  Created by Turma02-Backup on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    
    var body: some View {
        
        VStack{
            Text("Yu-Gi-Oh! Cards - Staples")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            NavigationStack{
                ScrollView{
                    
                    VStack{
                        AsyncImage(url: URL(string: "")){ result in
                            result.image?
                                .resizable()
                                .frame(width: 410, height: 250)
                                .scaledToFill()
                        }
                    }
                    
                    ForEach(viewModel.cards){ index in
                        NavigationLink(destination: View2(name: index.name!, type: index.type!, humanReadableCardType: index.humanReadableCardType!, frameType: index.frameType!, desc: index.desc!)){
                            HStack(){
                                AsyncImage(url: URL(string: "https://static.tvtropes.org/pmwiki/pub/images/im_scary.jpg")){ result in
                                    result.image?
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Rectangle()).padding(1)
                                        .cornerRadius(24)
                                        .scaledToFill()
                                        .padding(10)
                                }
                                Spacer()
                                Text(index.name!)
                                    .foregroundStyle(.black)
                                    .padding(5)
                                Spacer()
                            }.background(.red)
                        }
                        
                    }
                    
                }
                .onAppear {
                    viewModel.fetch() // Carrega os dados ao aparecer
                }
            }
            
        }.background(.blue)
        
    }
        
}

#Preview {
    ContentView()
}
