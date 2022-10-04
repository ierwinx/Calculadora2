import SwiftUI
import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var strResultado = "0"
    private var contador1: String = "0"
    private var contador2: String = "0"
    private var operacion: String = "+"
    
    //MARK: - Public Methods
    func borrar() {
        contador1 = "0"
        contador2 = "0"
        strResultado = "0"
    }
    
    func dividir() {
        cambiaContador("/")
    }
    
    func multiplicar() {
        cambiaContador("*")
    }
    
    func sumar() {
        cambiaContador("+")
    }
    
    func restar() {
        cambiaContador("-")
    }
    
    func igual() {
        realizaOperacion()
    }
    
    func punto() {
        mostrorResult(".")
    }
    
    func btnCero() {
        mostrorResult("0")
    }
    
    func btnUno() {
        mostrorResult("1")
    }
    
    func btnDos() {
        mostrorResult("2")
    }
    
    func btnTres() {
        mostrorResult("3")
    }
    
    func btnCuatro() {
        mostrorResult("4")
    }
    
    func btnCinco() {
        mostrorResult("5")
    }
    
    func btnSeis() {
        mostrorResult("6")
    }
    
    func btnSiete() {
        mostrorResult("7")
    }
    
    func btnOcho() {
        mostrorResult("8")
    }
    
    func btnNueve() {
        mostrorResult("9")
    }
    
    //MARK: - Private methods
    private func realizaOperacion() {
        guard let num1 = Int(contador1) else { return }
        guard let num2 = Int(contador2) else { return }
        
        switch operacion {
            case "+":
                strResultado = String(num1 + num2)
            case "-":
                strResultado = String(num1 - num2)
            case "*":
                strResultado = String(num1 * num2)
            case "/":
                strResultado = String(num1 / num2)
            default:
                break
        }
        
        contador1 = "0"
        contador2 = "0"
    }
    
    private func mostrorResult(_ numero: String) {
        if contador1 == "0" {
            contador1 = numero
        } else {
            contador1 += numero
        }
        strResultado = contador1
    }
    
    private func cambiaContador(_ op: String) {
        contador2 = contador1
        contador1 = "0"
        operacion = op
        strResultado = contador1
    }
    
}
