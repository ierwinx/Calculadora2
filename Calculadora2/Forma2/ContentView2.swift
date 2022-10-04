import SwiftUI

struct ContentView2: View {
    
    @StateObject var contentViewModel2 = ContentViewModel2()
    
    var body: some View {
        ZStack {
            Color("Negro").ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    Text(contentViewModel2.strResultado)
                        .font(.custom("SF Mono Regular", size: 80, relativeTo: .title))
                        .bold()
                        .foregroundColor(Color("Blanco"))
                }
                .padding([.leading, .trailing], 30)
                
                    
                LazyVGrid(columns: contentViewModel2.gridItem) {
                    ForEach(contentViewModel2.arrBtns, id: \.self) { btn in
                        Button {
                            contentViewModel2.realizaOp(operacion: btn.operaion, strNumero: btn.strLabel)
                        } label: {
                            Text(btn.strLabel)
                                .modifier(
                                    BotonModificador(cgfWidth: contentViewModel2.cgfWidth,
                                                     cFondo: btn.textColor,
                                                     tColor: btn.backgroundColor,
                                                     bDoble: btn.bWidth)
                                )
                        }
                    }
                }
                
                LazyVGrid(columns: contentViewModel2.gridItemFinal(contentViewModel2.cgfWidth)) {
                    ForEach(contentViewModel2.arrBtns2, id: \.self) { btn in
                        Button {
                            contentViewModel2.realizaOp(operacion: btn.operaion, strNumero: btn.strLabel)
                        } label: {
                            Text(btn.strLabel)
                                .modifier(
                                    BotonModificador(cgfWidth: contentViewModel2.cgfWidth,
                                                     cFondo: btn.textColor,
                                                     tColor: btn.backgroundColor,
                                                     bDoble: btn.bWidth)
                                )
                        }
                    }
                }
                
            }
            
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
