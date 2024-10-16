//
//  ViewModel.swift
//  APIs
//
//  Created by Turma02-Backup on 27/09/24.
//

import Foundation

class ViewModel : ObservableObject{
    
    @Published var chars : [HaPo] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL (string: "https://hp-api.onrender.com/api/characters/house/gryffindor")!){data, _, error in
            
            do{
                self.chars = try JSONDecoder().decode([HaPo].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
