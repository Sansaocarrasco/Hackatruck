
import Foundation

class ViewModel: ObservableObject {
    @Published var chars: [User] = []

    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/leituraUNIVASF") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Erro na requisição: \(error?.localizedDescription ?? "Erro desconhecido")")
                return
            }

            do {
                let decodedUsers = try JSONDecoder().decode([User].self, from: data)
                DispatchQueue.main.async {
                    self.chars = decodedUsers
                }
            } catch {
                print("Erro ao decodificar os dados: \(error)")
            }
        }
        task.resume()
    }
}
