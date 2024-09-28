//
//  ContentView.swift
//  APIs
//
//  Created by Turma02-Backup on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showsheet : Bool = false
    @StateObject var viewModel = ViewModel()
    var body: some View {
        
        NavigationStack{
            
                VStack {
                    AsyncImage(url: URL(string: "https://tm.ibxk.com.br/2021/04/19/19165615261383.jpg")){ result in
                        result.image?
                            .resizable()
                            .frame(width: 410, height: 250)
                            .scaledToFill()
                    }
                    
                ScrollView{
                    
                    ForEach(viewModel.chars){ index in
                        NavigationLink(destination: View2(name: index.name!, image: index.image!)){
                            
                            HStack(){
                                AsyncImage(url: URL(string: index.image!)){ result in
                                    result.image?
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).padding(1)
                                        .scaledToFill()
                                        .padding(10)
                                }
                                
                                Text(index.name!)
                                    .foregroundStyle(.white)
                                    .padding(5)
                                Spacer()
                            }
                        }
                        
                    }
                }
                .onAppear(){
                    viewModel.fetch()
                }
            }.ignoresSafeArea()
                .background(.fundo)
            
        }
    }
}

#Preview {
    ContentView()
}
