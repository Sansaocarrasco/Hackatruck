//
//  GrayView.swift
//  Aula6-TabView-Navigation
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct GrayView: View {
    var body: some View {
        VStack{
            Spacer()
                Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 280, height: 250)
                .padding(40)
                .background(.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
        .padding(.bottom, 5)
    }
}

#Preview {
    GrayView()
}
