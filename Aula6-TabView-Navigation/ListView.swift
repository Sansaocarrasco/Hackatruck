//
//  ListView.swift
//  Aula6-TabView-Navigation
//
//  Created by Turma02-Backup on 23/09/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack{
            NavigationStack{
                List{
                    HStack{
                        Text("Item 1")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    
                    HStack{
                        Text("Item 2")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                    }
                    
                    HStack{
                        Text("Item 3")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                    
                }.navigationTitle("List")
  
            }
            
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .padding(.bottom, 5)
    }
}

#Preview {
    ListView()
}
