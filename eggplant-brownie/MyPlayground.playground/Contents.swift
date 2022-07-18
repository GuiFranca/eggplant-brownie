import UIKit

let totalDeCalorias = [50.5, 100]

func todasCalorias(totalDeCalorias: [Double]) -> Double {
    var total: Double = 0
    
    for caloria in totalDeCalorias {
        total += caloria;
    }
    
    return total
}
let total = todasCalorias(totalDeCalorias: totalDeCalorias)
print(total)
