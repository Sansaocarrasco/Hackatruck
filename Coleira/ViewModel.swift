//
//  ViewModel.swift
//  Umido
//
//  Created by Turma02-24 on 07/10/24.
//

import Foundation
class ViewModel: ObservableObject {
    @Published var coleira: [Coleira] = []

    func fetch() {
        guard let url = URL(string: "http://10.87.154.149:1880/coleiraGET") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Erro na requisição: \(error?.localizedDescription ?? "Erro desconhecido")")
                return
            }

            do {
                let decodedUsers = try JSONDecoder().decode([Coleira].self, from: data)
                DispatchQueue.main.async {
                    self.coleira = decodedUsers
                }
            } catch {
                print("Erro ao decodificar os dados: \(error)")
            }
        }
        task.resume()
    }
}


