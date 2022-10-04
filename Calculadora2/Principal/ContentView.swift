import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewModel()
    private let cgfWidth: CGFloat = 70
    
    var body: some View {
        ZStack {
            Color("Negro").ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    Text(contentViewModel.strResultado)
                        .font(.custom("SF Mono Regular", size: 80, relativeTo: .title))
                        .bold()
                        .foregroundColor(Color("Blanco"))
                }
                .padding([.leading, .trailing], 30)
                
                VStack(spacing: 15) {
                    
                    HStack(spacing: 10) {
                        Button {
                            contentViewModel.borrar()
                        } label: {
                            Text("AC")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Gris"), tColor: Color("Negro"), bDoble: false))
                        }
                        
                        Button {
                            print("+/-")
                        } label: {
                            Text("+/-")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Gris"), tColor: Color("Negro"), bDoble: false))
                        }
                        
                        Button {
                            print("%")
                        } label: {
                            Text("%")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Gris"), tColor: Color("Negro"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.dividir()
                        } label: {
                            Text("÷")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Naranja"), tColor: Color("Blanco"), bDoble: false))
                        }

                    }
                    
                    HStack(spacing: 10) {
                        Button {
                            contentViewModel.btnSiete()
                        } label: {
                            Text("7")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.btnOcho()
                        } label: {
                            Text("8")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.btnNueve()
                        } label: {
                            Text("9")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.multiplicar()
                        } label: {
                            Text("x")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Naranja"), tColor: Color("Blanco"), bDoble: false))
                        }

                    }
                    
                    HStack(spacing: 10) {
                        Button {
                            contentViewModel.btnCuatro()
                        } label: {
                            Text("4")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.btnCinco()
                        } label: {
                            Text("5")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.btnSeis()
                        } label: {
                            Text("6")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.restar()
                        } label: {
                            Text("-")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Naranja"), tColor: Color("Blanco"), bDoble: false))
                        }

                    }
                    
                    HStack(spacing: 10) {
                        Button {
                            contentViewModel.btnUno()
                        } label: {
                            Text("1")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.btnDos()
                        } label: {
                            Text("2")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.btnTres()
                        } label: {
                            Text("3")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.sumar()
                        } label: {
                            Text("+")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Naranja"), tColor: Color("Blanco"), bDoble: false))
                        }

                    }
                    
                    HStack(spacing: 10) {
                        HStack {
                            Button {
                                contentViewModel.btnCero()
                            } label: {
                                Text("0")
                                    .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: true))
                            }
                        }
                        
                        Button {
                            contentViewModel.punto()
                        } label: {
                            Text(".")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("GrisOscuro"), tColor: Color("Blanco"), bDoble: false))
                        }
                        
                        Button {
                            contentViewModel.igual()
                        } label: {
                            Text("=")
                                .modifier(BotonModificador(cgfWidth: cgfWidth, cFondo: Color("Naranja"), tColor: Color("Blanco"), bDoble: false))
                        }

                    }
                    
                }
                    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
