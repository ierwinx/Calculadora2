import SwiftUI
import Foundation

struct ContentModel2: Hashable {
    
    let strLabel: String
    let textColor: Color
    let backgroundColor: Color
    let bWidth: Bool
    let operaion: ContentOps
    
}

enum ContentOps {
    case suma, multiplicacion, resta, division, igual, numero, reset, otro
}
