import SwiftUI
import Foundation

class ContentViewModel2: ObservableObject {
    
    
    @Published var strResultado = "0"
    let cgfWidth: CGFloat = 70
    
    var arrBtns = [
        ContentModel2(strLabel: "AC", textColor: Color("Gris"), backgroundColor: Color("Negro"), bWidth: false),
        ContentModel2(strLabel: "+/-", textColor: Color("Gris"), backgroundColor: Color("Negro"), bWidth: false),
        ContentModel2(strLabel: "%", textColor: Color("Gris"), backgroundColor: Color("Negro"), bWidth: false),
        ContentModel2(strLabel: "÷", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false),
        
        ContentModel2(strLabel: "7", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "8", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "9", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "x", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false),
        
        ContentModel2(strLabel: "4", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "5", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "6", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "-", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false),
        
        ContentModel2(strLabel: "1", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "2", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "3", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "+", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false)
    ]
    
    var arrBtns2 = [
        ContentModel2(strLabel: "0", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: true),
        ContentModel2(strLabel: ".", textColor: Color("GrisOscuro"), backgroundColor: Color("Blanco"), bWidth: false),
        ContentModel2(strLabel: "=", textColor: Color("Naranja"), backgroundColor: Color("Blanco"), bWidth: false)
    ]
    
    let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum: 70), spacing: 20),  count: 4)
    let gridItemFinal: (CGFloat) -> [GridItem] = { width in
        return [
            GridItem(.flexible(minimum: (width * 2) + 30), spacing: 10),
            GridItem(.flexible(maximum: width), spacing: 20),
            GridItem(.flexible(maximum: width), spacing: 10)
        ]
    }
    
    
    
}
