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
                // ... Add exercises for back category ...
            ]
        case .legs:
            return [
                // ... Add exercises for legs category ...
            ]
        case .abs:
            return [
                // ... Add exercises for abs category ...
            ]
        }
    }
}

