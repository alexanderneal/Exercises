import Foundation

extension Category {
    var exercises: [Exercise] {
        switch self {
        case .arms:
                    return [
                        Exercise(id: 1, details: "Arm Exercise 1"),
                        Exercise(id: 2, details: "Arm Exercise 2"),
                        Exercise(id: 3, details: "Arm Exercise 3"),
                        Exercise(id: 4, details: "Arm Exercise 4"),
                        Exercise(id: 5, details: "Arm Exercise 5"),
                        Exercise(id: 6, details: "Arm Exercise 6"),
                        Exercise(id: 7, details: "Arm Exercise 7"),
                        Exercise(id: 8, details: "Arm Exercise 8"),
                    ]
        case .pecho:
                    return [
                        Exercise(id: 1, details: "Pecho Exercise 1"),
                        Exercise(id: 2, details: "Pecho Exercise 2"),
                        Exercise(id: 3, details: "Pecho Exercise 3"),
                        Exercise(id: 4, details: "Pecho Exercise 4"),
                        Exercise(id: 5, details: "Pecho Exercise 5"),
                        Exercise(id: 6, details: "Pecho Exercise 6"),
                        Exercise(id: 7, details: "Pecho Exercise 7"),
                        Exercise(id: 8, details: "Pecho Exercise 8"),
                    ]
        case .back:
                    return [
                        Exercise(id: 1, details: "Back Exercise 1"),
                        Exercise(id: 2, details: "Back Exercise 2"),
                        Exercise(id: 3, details: "Back Exercise 3"),
                        Exercise(id: 4, details: "Back Exercise 4"),
                        Exercise(id: 5, details: "Back Exercise 5"),
                        Exercise(id: 6, details: "Back Exercise 6"),
                        Exercise(id: 7, details: "Back Exercise 7"),
                        Exercise(id: 8, details: "Back Exercise 8"),
                    ]
        case .legs:
                    return [
                        Exercise(id: 1, details: "Leg Exercise 1"),
                        Exercise(id: 2, details: "Leg Exercise 2"),
                        Exercise(id: 3, details: "Leg Exercise 3"),
                        Exercise(id: 4, details: "Leg Exercise 4"),
                        Exercise(id: 5, details: "Leg Exercise 5"),
                        Exercise(id: 6, details: "Leg Exercise 6"),
                        Exercise(id: 7, details: "Leg Exercise 7"),
                        Exercise(id: 8, details: "Leg Exercise 8"),
                    ]
        case .abs:
                    return [
                        Exercise(id: 1, details: "1 set x 1 min"),
                        Exercise(id: 2, details: "Abs Exercise 2"),
                        Exercise(id: 3, details: "Abs Exercise 3"),
                        Exercise(id: 4, details: "Abs Exercise 4"),
                        Exercise(id: 5, details: "Abs Exercise 5"),
                        Exercise(id: 6, details: "Abs Exercise 6"),
                        Exercise(id: 7, details: "Abs Exercise 7"),
                        Exercise(id: 8, details: "Abs Exercise 8"),
                    ]
        }
    }
}

