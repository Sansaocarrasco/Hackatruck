//
//  PinkView.swift
//  Aula6-TabView-Navigation
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct PinkView: View {
    var body: some View {
        VStack{
            Spacer()
                
                Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 250, height: 250)
                .padding(40)
                .background(.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.pink)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.pink)
        .padding(.bottom, 5)
    }
}

#Preview {
    PinkView()
}
