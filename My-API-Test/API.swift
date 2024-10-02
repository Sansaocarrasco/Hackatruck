//
//  API.swift
//  My-API-Test
//
//  Created by Turma02-Backup on 02/10/24.
//

import Foundation

// Estrutura para os dados que você vai enviar
struct User: Codable, Hashable{
    let login: String?
    let senha: String?
}

func postUser(nome: String, senha: String) {
    // URL da API
    guard let url = URL(string: "http://127.0.0.1:1880/envioUNIVASF") else {
        print("URL inválida")
        return
    }

    // Criação do objeto User
    let user = User(login: nome, senha: senha)

    // Configuração da requisição
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    do {
        // Codificando o objeto User em JSON
        let jsonData = try JSONEncoder().encode(user)
        request.httpBody = jsonData

        // Enviando a requisição
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Erro: \(error.localizedDescription)")
                return
            }
            
            // Verificando a resposta
            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                print("Usuário enviado com sucesso!")
            } else {
                print("Erro na resposta da API: \(response.debugDescription)")
            }
        }

        task.resume()
    } catch {
        print("Erro ao codificar dados: \(error.localizedDescription)")
    }
}
