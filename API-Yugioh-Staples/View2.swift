//
//  View2.swift
//  API-Yugioh-Staples
//
//  Created by Turma02-Backup on 30/09/24.
//

import SwiftUI

struct View2: View {
    var name: String = "aaaaa"
    var type: String = "xa"
    var humanReadableCardType: String = ""
    var frameType: String = ""
    var desc: String = ""
    var image_url: String = ""
    
    var body: some View {
 //       Spacer()
        VStack{
            HStack{
                Spacer()
                Text("Nome:")
                    .bold()
                Text(name)
                    .font(.title3)
                
                Spacer()
            }
            AsyncImage(url: URL(string: "https://i.pinimg.com/236x/1c/6a/9a/1c6a9aad1ef5b71201598fbea3f1d1e5.jpg")){ result in
                result.image?
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Rectangle()).padding(3)
                    .scaledToFill()
                    .padding(10)
            }
            
            HStack{
                Text("tipo")
                    .bold()
                Text(type)
                Spacer()
            }
            HStack{
                Text("tipo Especial:")
                    .bold()
                Text(humanReadableCardType)
                Spacer()
            }
            HStack{
                Text("Descrição")
                    .bold()
                Text(desc)
                Spacer()
            }
            
        }.background(.blue)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    View2()
}
