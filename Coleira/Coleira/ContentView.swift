import SwiftUI
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private var locationManager = CLLocationManager()
    
    @Published var latitude: Float = 0.0
    @Published var longitude: Float = 0.0

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            guard let location = locations.last else { return }
            
            // Atualiza a latitude e longitude
            let newLatitude = Float(location.coordinate.latitude)
            let newLongitude = Float(location.coordinate.longitude)
            
            // Verifica se a localização mudou antes de fazer o post
            if newLatitude != latitude || newLongitude != longitude {
                latitude = newLatitude
                longitude = newLongitude
                
                // Faz o post no banco de dados
                postColeira(latitude: latitude, longitude: longitude) {
                    // Aqui você pode adicionar lógica adicional após o post, se necessário
                }
            }
        }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Failed to find user's location: \(error.localizedDescription)")
    }
}

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    @StateObject var viewModel = ViewModel()

    var body: some View {
        VStack {
            VStack {
                Text("Latitude: \(locationManager.latitude)")
                Text("Longitude: \(locationManager.longitude)")
            }
            .padding()

            Button("Localiza") {
                postColeira(latitude: locationManager.latitude, longitude: locationManager.longitude) {
                    viewModel.fetch() // Atualiza a lista após o envio
                }
            }
            .padding(10)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
        .onAppear {
            viewModel.fetch()
        }
        .background(.purple)
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
