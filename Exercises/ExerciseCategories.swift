import Foundation

extension Category {
    var exercises: [Exercise] {
        switch self {
        case .arms:
            return [
                Exercise(id: 1, details: "2 sets x 10 reps"),
                Exercise(id: 2, details: "3 sets x 12 reps"),
                // ... Add more exercises ...
            ]
        case .pecho:
            return [
                Exercise(id: 1, details: "4 sets x 8 reps"),
                Exercise(id: 2, details: "2 sets x 15 reps"),
                // ... Add more exercises ...
            ]
        case .back:
            return [
                Exercise(id: 1, details: "Back Exercise 1"),
                Exercise(id: 2, details: "Back Exercise 2"),
                // ... Add more exercises ...
            ]
        case .legs:
            return [
                Exercise(id: 1, details: "Leg Exercise 1"),
                Exercise(id: 2, details: "Leg Exercise 2"),
                // ... Add more exercises ...
            ]
        case .abs:
            return [
                Exercise(id: 1, details: "Abs Exercise 1"),
                Exercise(id: 2, details: "Abs Exercise 2"),
                // ... Add more exercises ...
            ]
        }
    }
}

