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
        latitude = Float(location.coordinate.latitude)
        longitude = Float(location.coordinate.longitude)
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
            .background(.white)
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
