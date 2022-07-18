import UIKit

let caloria1 = 50.2
let caloria2 = 100
let caloria3 = 400
let caloria4 = 500


let totalDeCalorias = [50.5, 100, 400, 500, 423, 700]
print(totalDeCalorias)

// Primeira forma de fazer um laco
for i in 0...3 {
    print(totalDeCalorias[i])
}

//segunda forma de fazer um laco
for i in 0...totalDeCalorias.count - 1{
    print(totalDeCalorias[i])
}

//terceira forma de fazer um laco
for caloria in totalDeCalorias {
    print(caloria)
}
