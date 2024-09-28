//
//  View2.swift
//  APIs
//
//  Created by Turma02-Backup on 27/09/24.
//

import SwiftUI


struct View2: View {
    
    var name: String = ""
    var image: String = ""
    
    var body: some View {
        
        VStack(){
            Spacer()
            AsyncImage(url: URL(string: image)){ result in
                result.image?
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).padding(3)
                    .scaledToFill()
                    .padding(10)
            }
            
            Text(name)
                .foregroundStyle(.white)
                .font(.title)
                .padding(5)
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(.fundo)
    }
}

#Preview {
    View2()
}
