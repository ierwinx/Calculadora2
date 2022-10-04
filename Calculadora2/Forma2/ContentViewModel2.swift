import SwiftUI
import Foundation

class ContentViewModel2: ObservableObject {
    
    @Published var strResultado = "0"
    let cgfWidth: CGFloat = 70
    private var contador1: String = "0"
    private var contador2: String = "0"
    private var operacion: String = "+"
    
    var arrBtns = [
        ContentModel2(strLabel: "AC", textColor: Color("Gris"), backgroundColor: Color("Negro"), bWidth: false, operaion: .reset),
        ContentModel2(strLabel: "+/-", textColor: Color("Gris"), backgroundColor: Color("Negro"), bWidth: false, operaion: .otro),
        ContentModel2(strLabel: "%", textColor: Color("Gris"), backgroundColor: Color("Negro"), bWidth: false, operaion: .otro),
        ContentModel2(strLabel: "÷", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .division),
        
        ContentModel2(strLabel: "7", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "8", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "9", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "x", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .multiplicacion),
        
        ContentModel2(strLabel: "4", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "5", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "6", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "-", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .resta),
        
        ContentModel2(strLabel: "1", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "2", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "3", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "+", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .suma)
    ]
    
    var arrBtns2 = [
        ContentModel2(strLabel: "0", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: true, operaion: .numero),
        ContentModel2(strLabel: ".", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .numero),
        ContentModel2(strLabel: "=", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false, operaion: .igual)
    ]
    
    let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum: 70), spacing: 20),  count: 4)
    let gridItemFinal: (CGFloat) -> [GridItem] = { width in
        return [
            GridItem(.flexible(minimum: (width * 2) + 30), spacing: 10),
            GridItem(.flexible(maximum: width), spacing: 20),
            GridItem(.flexible(maximum: width), spacing: 10)
        ]
    }
    
    func realizaOp(operacion: ContentOps, strNumero: String) {
        switch operacion {
        case .suma:
            cambiaContador("+")
        case .multiplicacion:
            cambiaContador("*")
        case .resta:
            cambiaContador("-")
        case .division:
            cambiaContador("/")
        case .igual:
            realizaoperacion()
        case .numero:
            guard let strNewNum = Int(strNumero) else {
                return
            }
            if contador1 == "0" {
                contador1 = "\(strNewNum)"
            } else {
                contador1 += "\(strNewNum)"
            }
            strResultado = contador1
        case .otro:
            print("otro")
        case .reset:
            strResultado = "0"
            contador1 = "0"
            contador2 = "0"
        }
        
    }
    
    private func cambiaContador(_ op: String) {
        contador2 = contador1
        contador1 = "0"
        operacion = op
    }
    
    private func realizaoperacion() {
        guard let num1 = Int(contador1) else { return }
        guard let num2 = Int(contador2) else { return }
        
        switch operacion {
            case "+":
                strResultado = String(num1 + num2)
            case "-":
                strResultado = String(num2 - num1)
            case "*":
                strResultado = String(num1 * num2)
            case "/":
                strResultado = String(num2 / num1)
            default:
                break
        }
        
        contador1 = "0"
        contador2 = "0"
    }
    
}
