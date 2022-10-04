import SwiftUI

struct BotonModificador: ViewModifier {
    
    var cgfWidth: CGFloat
    var cFondo: Color
    var tColor: Color
    var bDoble: Bool
    
    func body(content: Content) -> some View {
        content
            .frame(width: bDoble ? (cgfWidth + 5) * 2 : cgfWidth, height: cgfWidth)
            .font(.title)
            .bold()
            .foregroundColor(tColor)
            .background(cFondo)
            .cornerRadius(cgfWidth / 2)
    }
    
}
