//
//  ContentView.swift
//  Aula4
//
//  Created by Turma02-Backup on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Float = 0
    @State private var cor: Color = .normal
    @State private var altura: Float = 0
    @State private var classificacao: String = "Normal"
    @State private var linder: Bool = false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Calculadora de IMC")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            HStack{
                TextField("Digite seu peso", value: $peso, format: .number)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 40)
                    
            }.background(.white).frame(height: 70)
            HStack{
                TextField("Digite sua altura", value: $altura, format: .number)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 40)
            }.background(.white)
            
            Button("Calcular"){
                var imc:Float = (peso/(altura*altura))
                if (imc < 18.5){
                    cor = .baixo
                    classificacao = "Baixo Peso \(imc)"
                }
                if (imc >= 18.5 && imc <= 24.99){
                    cor = .normal
                    classificacao = "Normal \(imc)"
                }
                if (imc >= 25.0 && imc <= 29.99){
                    cor = .sobrepeso
                    classificacao = "Sobrepeso \(imc)"
                }
                if (imc > 30.0){
                    cor = .obesidade
                    classificacao = "Obesidade \(imc)"
                }
                
                if (imc == .infinity){linder = true}
                
            }
            
            
            .frame(width:100, height: 30)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10.0, height: 10.0)))
            
            Spacer()
            if (linder == true){
                Image(.linder)
                    .resizable()
                    .frame(width: 150, height: 160)
                    .scaleEffect(isAnimating ? 1.5 : 1.0)
                    .onAppear() {
                        withAnimation(.easeInOut(duration:0.2).repeatForever(autoreverses: true)) {
                              isAnimating = true
                            }
                          }
            }
            
            Text("\(classificacao)").font(.title).foregroundColor(.white)
            Spacer()
            HStack{
                Image(.tabelaIMC)
                    .resizable()
                    .frame(width: 400, height: 200)
            }
            
        }.background(cor)
        
    }
}

#Preview {
    ContentView()
}
