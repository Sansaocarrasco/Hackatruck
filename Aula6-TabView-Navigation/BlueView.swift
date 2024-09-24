//
//  BlueView.swift
//  Aula6-TabView-Navigation
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        VStack{
            Spacer()
                
                Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 250, height: 250)
                .padding(40)
                .background(.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
            
            Spacer()
        }

        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
        .padding(.bottom, 5)
    }
}

#Preview {
    BlueView()
}
