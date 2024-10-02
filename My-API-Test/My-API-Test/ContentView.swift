//
//  ContentView.swift
//  My-API-Test
//
//  Created by Turma02-Backup on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            VStack{}
            
            ForEach(viewModel.chars, id: \.self){ index in
                    HStack(){
                        Spacer()
                        Text(index.login!)
                            .foregroundStyle(.black)
                            .padding(5)
                        Spacer()
                    }.background(.red)
                }
        }
        .onAppear {
            viewModel.fetch() // Carrega os dados ao aparecer
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
