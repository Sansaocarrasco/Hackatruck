//
//  ContentView.swift
//  Aula8-Desafio1-Maps
//
//  Created by Turma02-Backup on 25/09/24.
//

import SwiftUI
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}


struct ContentView: View {
    
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(
    
        center: CLLocationCoordinate2D(latitude: -9.438576, longitude: -40.521788),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    ))
    @State private var showsheet : Bool = false
    @State private var nomepais : String = "Brasil"
    var locals = [
        Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -9.438576, longitude: -40.521788), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        Location(name: "EUA", coordinate: CLLocationCoordinate2D(latitude: 38.069980, longitude: -92.800848), flag: "https://static.mundoeducacao.uol.com.br/mundoeducacao/2022/05/bandeira-estados-unidos.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        Location(name: "Australia", coordinate: CLLocationCoordinate2D(latitude: -33.010597, longitude: 143.041035), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/1200px-Flag_of_Australia_%28converted%29.svg.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ]
    
    var body: some View {
        
        ZStack{
            Map(position: $position){
                ForEach(locals){ l in
                    Annotation(l.name, coordinate: l.coordinate){
                        ZStack{
                            Image(systemName: "signpost.right.fill")
                                .frame(width: 10, height: 10)
                        }
                        .onTapGesture{
                            showsheet.toggle()
                        }
                        
                        .sheet(isPresented: $showsheet){
                            VStack{
                                Text(l.name)
                                    .font(.title)
                                AsyncImage(url: URL(string: l.flag)){ result in
                                    result.image?
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 200, height: 200)
                                    Text(l.description)
                                        .padding(45)
                                }
                            }
                            .frame(width: .infinity, height: .infinity)
                        }
                    }
                        
                }
            }
                .ignoresSafeArea()
            
            VStack {
                
                VStack{
                    Text("World Map")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                .frame(width: .infinity, height: .infinity)
                
                HStack{
                        Text(nomepais)
                }
                Spacer()
                
                HStack{
                    
                    ForEach(locals){ l in
                        
                        AsyncImage(url: URL(string: l.flag)){ result in
                            result.image?
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                
                        }.onTapGesture {
                              
                            nomepais = l.name
                            position = MapCameraPosition.region(MKCoordinateRegion(
                                
                                center: l.coordinate,
                                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
                            ))
                            
                            
                        }
                    }
                    .padding(30)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
