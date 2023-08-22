extension Category {
    var exercises: [Exercise] {
        switch self {
        case .arms:
            return [
                
                // ... Add more exercises ...
            ]
        case .pecho:
            return [
                // ... Add exercises for pecho category ...
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
                Exercise(id: 1, details: "1 set x 20 reps.", imageName: "abs_workout"),
                Exercise(id: 2, details: "1 set x 15 reps. ", imageName: "cable_down_abs"),
                Exercise(id: 3, details: "1 set x 20 reps.", imageName: "decline_abs"),
                Exercise(id: 4, details: "1 set x 10 reps.", imageName: "hanging_leg_raise_ab_exercise"),
                Exercise(id: 5, details: "1 set x 1 min ", imageName: "plank"),
                Exercise(id: 6, details: "1 set x 15 reps.", imageName: "rise_up_abs"),
                Exercise(id: 7, details: "1 set x 20 reps.", imageName: "sat_down_skipping_abs"),
                Exercise(id: 8, details: "1 set x 30 secs ", imageName: "side_plank"),
                // Exercises for abs category
            ]
        }
    }
}

