
import Foundation

struct Ingredient {
  var name: String
  var quantity: Double
  var unit: Unit
 
  var description: String {
    let formattedQuantity = String(format: "%g", quantity)
    switch unit {
      case .none:
        let formattedName = quantity == 1 ? name : "\(name)s"
        return "\(formattedQuantity) \(formattedName)"
      default:
        if quantity == 1 {
          return "1 \(unit.singularName) \(name)"
        } else {
          return "\(formattedQuantity) \(unit.rawValue) \(name)"
        }
    }
  }
 
  enum Unit: String, CaseIterable {
    case oz = "Ounces"
    case g = "Grams"
    case cups = "Cups"
    case tbs = "Tablespoons"
    case tsp = "Teaspoons"
    case none = "No Units"
 
    var singularName: String { String(rawValue.dropLast()) }
  }
}


let mySecondIngredient = Ingredient(name: "Salt", quantity: 1.0, unit: .tsp)
print(type(of: mySecondIngredient))
