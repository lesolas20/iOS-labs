enum FuelType: String {
  case diesel
  case petrol
  case electric
}

class Vehicle {
  let brand: String
  let model: String?
  let releaseYear: UInt?
  var distanceTraveled: Double?
  let fuelType: FuelType

  init(
    brand: String, model: String? = nil, releaseYear: UInt? = nil, distanceTraveled: Double? = nil,
    fuelType: FuelType
  ) {
    self.brand = brand
    self.model = model
    self.releaseYear = releaseYear
    self.distanceTraveled = distanceTraveled
    self.fuelType = fuelType
  }

  func description() {
    let year: String
    let distance: String

    if let _year = self.releaseYear {
      year = String(_year)
    } else {
      year = "unknown"
    }

    if let _distance = self.distanceTraveled {
      distance = String(_distance)
    } else {
      distance = "unknown"
    }

    print(
      "Brand: \(self.brand)"
        + ", model: \(self.model ?? "unknown")"
        + ", release year: \(year)"
        + ", distance traveled: \(distance)"
        + ", fuel type: \(self.fuelType)"
    )
  }
}

class Owner {
  var name: String
  var vehicle: Vehicle

  init(name: String, vehicle: Vehicle) {
    self.name = name
    self.vehicle = vehicle
  }

  func vehicleInfo() {
    print("Vehicle owned by \(name):")
    self.vehicle.description()
  }
}

let vehicles: [Vehicle] = [
  Vehicle(brand: "BMW", model: "BMW i4", distanceTraveled: 93.17, fuelType: .petrol),
  Vehicle(
    brand: "Tesla", model: "Tesla Model S", releaseYear: 2020, distanceTraveled: 96,
    fuelType: .electric),
  Vehicle(brand: "Audi", model: "Audi Q5", fuelType: .petrol),
  Vehicle(
    brand: "Volkswagen", model: "Volkswagen Touareg", releaseYear: 2021, distanceTraveled: 117,
    fuelType: .diesel),
]

for vehicle in vehicles {
  vehicle.description()
}

print()

let owner1 = Owner(name: "John Smith", vehicle: vehicles[1])
owner1.vehicleInfo()
