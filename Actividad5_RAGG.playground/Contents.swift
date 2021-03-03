import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/


class persona
{
    var Saludo:String
    var Caminar:Int
    
    init(Saludo:String, pasos:Int)
    {
        self.Saludo = Saludo
        self.Caminar = pasos
    }
    
    func Caminar(pasos:Int)
    {
        self.Caminar = pasos
    }
    
    func Saludo(mensaje:String)
    {
        self.Saludo = mensaje
    }
}

var rafael = persona(Saludo: "Mucho Gusto", pasos: 1000)

//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.

struct Pantalla
{
    var ancho: Int
    var alto: Int
    
    init(ancho:Int, alto:Int)
    {
        self.ancho = ancho
        self.alto = alto
    }
    
    func Estructura() -> (Int, Int)
    {
        return (self.alto, self.ancho)
    }
}

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/

extension Int
{
    var Horas: Int
    {
        return self*24*7
    }
}

//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7

extension String
{
    var Dias: String
    {
        return self
    }
    
    func Numero() -> String
    {
        switch self.Dias
        {
        case "Domingo":
            return "1"
        case "Lunes":
            return "2"
        case "Martes":
            return "3"
        case "Miercoles":
            return "4"
        case "Jueves":
            return "5"
        case "Viernes":
            return "6"
        case "Sabado":
            return "7"
        default:
            return "No se identifico el dia"
        }
    }
}

/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/

var Optional: Int

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]
var existe:Int

var Let_dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]

existe = Let_dias["CDMX"]!

if Let_dias["DF"] != nil
{
    print("Si existe")
}
else
{
    print("No existe")
}







