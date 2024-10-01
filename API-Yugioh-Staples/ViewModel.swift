import Foundation

struct CardResponse: Codable {
    let data: [Card]
}

class ViewModel: ObservableObject {
    @Published var cards: [Card] = []
    
    func fetch() {
        guard let url = URL(string: "https://db.ygoprodeck.com/api/v7/cardinfo.php?staple=yes") else {
            print("URL inválida")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Verifica se ocorreu um erro
            if let error = error {
                print("Erro ao fazer a requisição: \(error)")
                return
            }
            
            // Verifica se os dados foram recebidos
            guard let data = data else {
                print("Nenhum dado recebido")
                return
            }
            
            do {
                // Decodifica a resposta
                let cardResponse = try JSONDecoder().decode(CardResponse.self, from: data)
                
                // Atualiza cards na thread principal
                DispatchQueue.main.async {
                    self.cards = cardResponse.data
                }
            } catch {
                print("Erro ao decodificar JSON: \(error)")
            }
        }
        
        task.resume()
    }
}
