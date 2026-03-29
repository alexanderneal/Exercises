extension Category {
    var exercises: [Exercise] {
        switch self {
        case .arms:
            return [
                Exercise(id: 1, details: "1 set x 12 reps", imageName: "Bicep curl flat grab", description: "Stand with feet shoulder-width apart, knees slightly bent, and grip the bar with palms facing up. Exhale as you curl the bar toward your chest, keeping your elbows pinned to your ribs to avoid swinging. Inhale and lower the weight slowly to full extension, maintaining a neutral spine and a braced core."),
                
                Exercise(id: 2, details: "1 set x 12 reps", imageName: "Bicep curl neutral grab", description: " Standing tall with feet shoulder-width apart, hold the dumbbells at your sides with palms facing your thighs. Exhale as you rotate your wrists and curl the weights toward your shoulders, keeping your elbows tucked tightly to your ribs. Inhale and lower the weights with a slow, controlled motion to ensure you are not using momentum to drop the load."),
                
                Exercise(id: 3, details: "1 sets x 10 reps", imageName: "Dumbbell lateral raises arms", description: "Stand with feet hip-width apart and a slight bend in your knees while holding dumbbells at your sides. Exhale as you lift the weights out to the side until they reach shoulder height, keeping a slight bend in your elbows. Inhale and lower the weights slowly to the starting position without letting them touch your thighs to maintain tension."),
                
                Exercise(id: 4, details: "1 set x 10 reps", imageName: "Shoulder press arms", description: "Sit or stand tall with your core braced and feet planted firmly while holding dumbbells at shoulder height. Exhale as you press the weights directly overhead until your arms are straight but not locked at the elbows. Inhale and lower the weights slowly back to the starting position to keep constant tension on the deltoids."),
                
                Exercise(id: 5, details: "1 set to failiure", imageName: "Shoulders arms", description: "Sit or stand tall with your core braced and feet planted firmly while holding dumbbells at shoulder height. Exhale as you press the weights directly overhead until your arms are straight but not locked at the elbows. Inhale and lower the weights slowly back to the starting position to keep constant tension on the deltoids."),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Stand up bicep curl", description: "Stand with feet shoulder-width apart and knees slightly bent while holding the bar with an underhand grip. Exhale as you curl the weight toward your chest while keeping your elbows locked at your sides to prevent momentum. Inhale as you lower the weight slowly to the starting position to maintain control and protect your tendons."),
                
                Exercise(id: 7, details: "2 set. x 12 reps", imageName: "Tricep arms", description: "Stand with feet shoulder-width apart and hold a dumbbell with both hands directly above your head with arms fully extended. Exhale as you lower the weight slowly behind your head by bending only at the elbows while keeping your upper arms stationary. Inhale as you press the weight back to the starting position using your triceps while keeping your core tight to protect your lower back."),
                
                Exercise(id: 8, details: "1 sets x 10 reps", imageName: "Triceps arm", description: "Stand with feet hip-width apart and a slight bend in your knees while holding the rope attachment with a neutral grip. Exhale as you pull the rope down until your arms are fully extended at your sides while keeping your elbows pinned to your ribs. Inhale as you allow the rope to return slowly to chest height while maintaining a braced core to prevent any body swinging."),
            ]
        
        
        case .pecho:
            return [
                Exercise(id: 1, details: "1 set x Maxi", imageName: "Bench press chest", description: "Lie flat on the bench with your feet planted firmly and grip the bar slightly wider than shoulder-width. Exhale as you press the bar upward while keeping your shoulder blades retracted and inhale as you lower it slowly to your mid-chest."),
                
                Exercise(id: 2, details: "1 set x 12 reps", imageName: "Chest dips pecho", description: "Grip the parallel bars and lean your torso slightly forward with your elbows flared out to shift the focus to your chest. Exhale as you press yourself up to full extension and inhale as you lower your body until your shoulders are slightly below your elbows."),
                
                Exercise(id: 3, details: "1 sets x 12 reps", imageName: "Forward chest", description: "Sit tall with your back against the pad and grip the handles at mid-chest level while keeping your feet planted firmly. Exhale as you press the handles forward to full extension without locking your elbows and inhale as you return to the start."),
                
                Exercise(id: 4, details: "1 set x 12 reps", imageName: "Incline dumbbells press", description: "Lie on an incline bench set at 45 degrees and press the dumbbells directly above your mid-chest while keeping your shoulder blades retracted. Exhale as you press the weights to full extension without locking your elbows and inhale as you lower them slowly to shoulder height."),
                
                Exercise(id: 5, details: "1 set to 6", imageName: "Open fly chest", description: "Lie flat on a bench with dumbbells held directly above your chest and a slight bend in your elbows throughout the movement. Inhale as you lower the weights in a wide arc until your chest feels a stretch and exhale as you squeeze them back to the start."),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Stand up bicep curl", description: "Stand with feet shoulder-width apart and knees slightly bent while holding the bar with an underhand grip. Exhale as you curl the weight toward your chest while keeping your elbows locked at your sides and inhale as you lower it slowly."),
                
                Exercise(id: 7, details: "1 set. x 12 reps", imageName: "Opening chest", description: "Lie flat on a bench with dumbbells held directly above your chest and a slight bend in your elbows throughout the movement. Inhale as you lower the weights in a wide arc until your chest feels a stretch and exhale as you squeeze them back to the start."),
                
                Exercise(id: 8, details: "1 sets x 20 reps", imageName: "Push up chest", description: "Start in a high plank position with your hands slightly wider than shoulder-width and your body in a straight line from head to heels. Inhale as you lower your chest toward the floor by bending your elbows and exhale as you press back up to the start."),
            ]
        
        
        case .back:
            return [
                Exercise(id: 1, details: "1 set x 10 reps", imageName: "Pullup back", description: "Grip the overhead bar with hands slightly wider than shoulder-width and your palms facing away from your body. Exhale as you pull your chest toward the bar by driving your elbows down and inhale as you lower yourself back to full extension."),
                
                Exercise(id: 2, details: "1 set x 10 reps", imageName: "Bent over barbell row back",description: "Hinge at your hips with a flat back and grip the barbell with hands slightly wider than shoulder-width while keeping your knees slightly bent. Exhale as you pull the bar toward your lower ribcage by driving your elbows back and inhale as you lower it under full control"),
                
                Exercise(id: 3, details: "2 sets x 8 reps", imageName: "Lat pulldown back", description: "Sit tall with your knees secured and grip the bar slightly wider than shoulder-width with your palms facing forward. Exhale as you pull the bar down to your upper chest by driving your elbows down and back, then inhale as you return to full extension."),
                
                Exercise(id: 4, details: "1 set x 10 reps", imageName: "One Arm Dumbbell Row back", description: "Place one hand and knee on a bench with your back flat and parallel to the floor while holding a dumbbell at full extension. Exhale as you pull the weight to your hip by driving your elbow back and inhale as you lower it with control to a full stretch."),
                
                Exercise(id: 5, details: "2 sets x 10 reps", imageName: "Press back", description: "Sit tall with your chest against the pad and grip the handles at shoulder height with your elbows slightly bent. Exhale as you pull the handles back by squeezing your shoulder blades together and inhale as you return to the start."),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Pull back", description: "Sit tall with your chest against the pad and grip the handles at shoulder height with your elbows slightly bent. Exhale as you pull the handles back by squeezing your shoulder blades together and inhale as you return to the start."),
                
                Exercise(id: 7, details: "1 set. x 10 reps", imageName: "Bend over dumbells row back", description: "Hinge at your hips with a flat back and hold dumbbells at arm's length with your knees slightly bent. Exhale as you pull the weights toward your hips by driving your elbows back and inhale as you lower them with control."),
                 
                Exercise(id: 8, details: "2 sets x 10 reps", imageName: "Row back", description: "Sit tall with your chest against the pad and grip the handles at shoulder height with your elbows slightly bent. Exhale as you pull the handles back by squeezing your shoulder blades together and inhale as you return to the start."),
            ]
        
        
        case .legs:
            return [
                Exercise(id: 1, details: "2 sets x 8 reps", imageName: "Squats", description: "Stand with feet shoulder-width apart and your chest held high while keeping your core braced and spine neutral. Inhale as you lower your hips back and down until your thighs are at least parallel to the floor, then exhale as you drive through your heels to return to the start."),
                
                Exercise(id: 2, details: "1 set x 12 reps", imageName: "Leg pressdown", description: "Sit on the machine with your feet shoulder-width apart on the platform and your back pressed firmly against the pad. Inhale as you lower the weight by bending your knees to 90 degrees and exhale as you press the platform back to the start without locking your knees."),
                
                Exercise(id: 3, details: "2 sets x 8 reps", imageName: "Leg extension", description: "Sit tall with your back against the pad and your shins tucked securely under the padded bar. Exhale as you extend your legs to full extension by contracting your quads and inhale as you lower the weight slowly to the start."),
                
                Exercise(id: 4, details: "1 set x 14 reps", imageName: "Leg curls", description: "Lie face down on the machine with your legs straight and the padded bar resting just above your heels. Exhale as you curl the weight toward your glutes by bending your knees and inhale as you lower it slowly back to the start."),
                
                Exercise(id: 5, details: "1 set x 10 reps", imageName: "Down press legs", description: "Sit on the machine with your feet flat on the platform and your back pressed firmly against the seat. Inhale as you lower the weight toward your chest by bending your knees and exhale as you press it back to the start."),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Pull down legs", description: "Sit on the machine with your feet flat on the platform and your back pressed firmly against the seat. Inhale as you lower the weight toward your chest by bending your knees and exhale as you press it back to the start."),
             
                Exercise(id: 7, details: "1 set", imageName: "Steps legs", description: "Stand tall in front of a box or bench with your chest up and your core engaged. Step one foot firmly onto the platform, exhale as you drive through your heel to stand up straight, and inhale as you step back down."),
            ]
            
        case .abs:
            return [
                Exercise(id: 1, details: "1 set x 10 reps", imageName: "Plank", description: "Place your forearms on the floor with elbows under shoulders and extend your legs to form a straight line from head to heels. Hold the position while breathing steadily, keeping your core braced and your hips level to prevent your lower back from sagging.."),
                
                Exercise(id: 2, details: "1 set x 20 reps", imageName: "Abs workout", description: "Sit tall on the floor with knees bent and feet lifted, holding a weight or clasping your hands in front of your chest. Exhale as you rotate your torso from side to side, touching the floor on each side while keeping your core braced and spine neutral."),
                
                Exercise(id: 3, details: "1 set x 15 reps", imageName: "Cable down abs", description: "Kneel facing the cable machine and grip the rope attachment behind your head with your elbows tucked close to your ears. Exhale as you crunch your torso toward your knees by contracting your abs and inhale as you return slowly to the start."),
                
                Exercise(id: 4, details: "2 sets x 10 reps", imageName: "Decline abs", description: "Secure your feet under the pads of a decline bench and lie back with your hands behind your head or crossed over your chest. Exhale as you curl your torso upward toward your knees by contracting your abdominals and inhale as you lower yourself back down with control.."),
                
                Exercise(id: 5, details: "1 set x 12 reps", imageName: "Hanging leg raise ab exercise", description: "Grip an overhead bar with hands shoulder-width apart and your body hanging in a straight, stable line. Exhale as you lift your legs to at least hip height by contracting your lower abs, then inhale as you lower them slowly. Keep your torso still and avoid swinging to ensure your core is doing the work throughout the entire set."),
               
                Exercise(id: 6, details: "1 set x 8 reps", imageName: "Rise up abs", description: "Lie flat on your back with your legs extended toward the ceiling and your hands reaching toward your toes. Exhale as you lift your shoulder blades off the floor to reach for your feet by contracting your upper abs. Inhale as you lower your torso back down with control while keeping your legs steady and vertical."),
                
                Exercise(id: 7, details: "1 set x 22 reps", imageName: "Sat down skipping abs", description: "Sit tall on the floor or a bench with your knees bent and feet lifted slightly to find your balance. Exhale as you lean back and rotate your torso, alternating between touching the floor on your left and right sides. Inhale as you return to center, keeping your core braced and your spine long throughout the movement."),
                
                Exercise(id: 8, details: "1 set x 30 secs", imageName: "Side plank", description: "Lie on your side with your legs straight and your weight propped up on one forearm directly under your shoulder. Exhale as you lift your hips off the floor until your body forms a straight line from head to heels. Hold the position while breathing steadily, keeping your core braced and your hips stacked vertically."),
            ]
        }
    }
}

