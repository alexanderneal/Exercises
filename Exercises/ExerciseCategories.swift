extension Category {
    var exercises: [Exercise] {
        switch self {
        case .arms:
            return [
                Exercise(id: 1, details: "1 set x 12 reps.", imageName: "bicep curl flat grab"),
                Exercise(id: 2, details: "1 set x 12 reps.", imageName: "bicep curl neutral grab"),
                Exercise(id: 3, details: "1 sets x 10 reps.", imageName: "Dumbbell_lateral_raises_arms"),
                Exercise(id: 4, details: "1 set x 10 reps.", imageName: "shoulder_press_arms"),
                Exercise(id: 5, details: "1 set to failiure", imageName: "shoulders_arms"),
                Exercise(id: 6, details: "1 set x 10 reps.", imageName: "stand up bicep curl"),
                Exercise(id: 7, details: "2 set. x 12 reps.", imageName: "tricep_arms"),
                Exercise(id: 8, details: "1 sets x 10 reps.", imageName: "triceps_arm"),
            ]
        case .pecho:
            return [
                Exercise(id: 1, details: "1 set x Maxi", imageName: "bench_press_chest"),
                Exercise(id: 2, details: "1 set x 12 reps.", imageName: "chest_dips_pecho"),
                Exercise(id: 3, details: "1 sets x 12 reps.", imageName: "forward_chest"),
                Exercise(id: 4, details: "1 set x 12 reps.", imageName: "Incline_dumbbells_press"),
                Exercise(id: 5, details: "1 set to 6", imageName: "open_fly_chest"),
                Exercise(id: 6, details: "1 set x 10 reps.", imageName: "stand up bicep curl"),
                Exercise(id: 7, details: "1 set. x 12 reps.", imageName: "opening_chest"),
                Exercise(id: 8, details: "1 sets x 20 reps.", imageName: "push_up_chest"),
            ]
        case .back:
            return [
                Exercise(id: 1, details: "1 set x 10 reps.", imageName: "Pullup_back"),
                Exercise(id: 2, details: "1 set x 10 reps.", imageName: "bent_over_barbell_row_back"),
                Exercise(id: 3, details: "2 sets x 8 reps.", imageName: "Lat_pulldown_back"),
                Exercise(id: 4, details: "1 set x 10 reps.", imageName: "One_Arm_Dumbbell_Row_back"),
                Exercise(id: 5, details: "2 sets x 10 reps.", imageName: "press_back"),
                Exercise(id: 6, details: "1 set x 10 reps.", imageName: "pull_back"),
                Exercise(id: 7, details: "1 set. x 10 reps.", imageName: "bend_over_dumbells_row_back"),
                Exercise(id: 8, details: "2 sets x 10 reps.", imageName: "row_back"),
            ]
        case .legs:
            return [
                Exercise(id: 1, details: "2 sets x 8 reps.", imageName: "squats"),
                Exercise(id: 2, details: "1 set x 12 reps.", imageName: "leg_pressdown"),
                Exercise(id: 3, details: "2 sets x 8 reps.", imageName: "leg_extension"),
                Exercise(id: 4, details: "1 set x 14 reps.", imageName: "leg_curls"),
                Exercise(id: 5, details: "1 set x 10 reps.", imageName: "down_press_legs"),
                Exercise(id: 6, details: "1 set x 10 reps.", imageName: "pull_down_legs"),
                Exercise(id: 7, details: "1 set.", imageName: "steps_legs"),
            ]
        case .abs:
            return [
                Exercise(id: 1, details: "1 set x 10 reps.", imageName: "plank"),
                Exercise(id: 2, details: "1 set x 20 reps.", imageName: "abs_workout"),
                Exercise(id: 3, details: "1 set x 15 reps.", imageName: "cable_down_abs"),
                Exercise(id: 4, details: "2 sets x 10 reps.", imageName: "decline_abs"),
                Exercise(id: 5, details: "1 set x 12 reps.", imageName: "hanging_leg_raise_ab_exercise"),
                Exercise(id: 6, details: "1 set x 8 reps.", imageName: "rise_up_abs"),
                Exercise(id: 7, details: "1 set x 22 reps.", imageName: "sat_down_skipping_abs"),
                Exercise(id: 8, details: "1 set x 30 secs", imageName: "side_plank"),
            ]
        }
    }
}
