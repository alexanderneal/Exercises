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
                Exercise(id: 1, details: "1 set x 10 reps", imageName: "Pullup back", description: "Grip about shoulder-width apart. Pull. Pull yourself up by pulling your elbows down to the floor. Pass The bar. Repeat."),
                
                Exercise(id: 2, details: "1 set x 10 reps", imageName: "Bent over barbell row back",description: "Keeping your back straight, and elbows close to your body, row the barbell towards your chest, squeezing your back muscles. Slowly lower to the starting position"),
                
                Exercise(id: 3, details: "2 sets x 8 reps", imageName: "Lat pulldown back", description: "Sit on the machine and adjust the thigh pads to secure your legs. Grasp the bar with a wide, overhand grip, keeping your wrists straight and your elbows slightly bent. Lean back slightly, engaging your core, and pull the bar down towards your upper chest"),
                
                Exercise(id: 4, details: "1 set x 10 reps", imageName: "One Arm Dumbbell Row back", description: "Leaning forward, supporting yourself with one hand on a bench, and pulling a dumbbell up towards your chest with the other arm, keeping your back straight and torso stable"),
                
                Exercise(id: 5, details: "2 sets x 10 reps", imageName: "Press back", description: "Sit with your feet on the footrests, knees slightly bent, and grab the handles with a neutral grip. Keep your back straight, chest up, and pull the handles towards your stomach, squeezing your shoulder blades" ),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Pull back", description: "Exhale as you pull the handles towards your stomach. Inhale as you return to the starting position. "),
                
                Exercise(id: 7, details: "1 set. x 10 reps", imageName: "Bend over dumbells row back", description: "Bend your knees and lean forward at the hips, keeping your spine nice and straight. "),
                 
                Exercise(id: 8, details: "2 sets x 10 reps", imageName: "Row back", description: "To row back effectively, focus on engaging your back muscles, maintaining a stable core, and using a controlled, smooth motion."),
            ]
        
        
        case .legs:
            return [
                Exercise(id: 1, details: "2 sets x 8 reps", imageName: "Squats", description: "Stand with feet slightly wider than shoulder-width apart, toes pointed slightly outward, and engage your core. Lower your body by bending your knees and pushing your hips back as if sitting in a chair, keeping your back straight and chest up."),
                
                Exercise(id: 2, details: "1 set x 12 reps", imageName: "Leg pressdown", description: "Adjust the seat to a comfortable position where your knees are at a 90-degree angle when your back is flat against the support."),
                
                Exercise(id: 3, details: "2 sets x 8 reps", imageName: "Leg extension", description: "Sit on the machine with your knees bent at a 90-degree angle and your feet secured under the padded lever."),
                
                Exercise(id: 4, details: "1 set x 14 reps", imageName: "Leg curls", description: "Involve flexing the knee to bring the heels towards the buttocks"),
                
                Exercise(id: 5, details: "1 set x 10 reps", imageName: "Down press legs", description: "Start by positioning your feet on the platform, adjusting the angle and width based on your preference and the muscles you want to target."),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Pull down legs", description: ""),
             
                Exercise(id: 7, details: "1 set", imageName: "Steps legs", description: "Alternate legs for each repetition or complete all reps on one side before switching"),
            ]
            
        case .abs:
            return [
                Exercise(id: 1, details: "1 set x 10 reps", imageName: "Plank", description: "Start by lying face down on the floor. Position your forearms on the ground, elbows directly beneath your shoulders, and your feet hip-width apart with toes tucked under."),
                
                Exercise(id: 2, details: "1 set x 20 reps", imageName: "Abs workout", description: "Attach a rope handle to the high pulley of a cable machine. Kneel in front of the machine and hold the rope with both hands, bringing it around your head."),
                
                Exercise(id: 3, details: "1 set x 15 reps", imageName: "Cable down abs", description: ""),
                
                Exercise(id: 4, details: "2 sets x 10 reps", imageName: "Decline abs", description: "Start by adjusting the bench to a suitable angle, typically between 30-45 degrees, with a greater angle increasing the difficulty."),
                
                Exercise(id: 5, details: "1 set x 12 reps", imageName: "Hanging leg raise ab exercise", description: ""),
               
                Exercise(id: 6, details: "1 set x 8 reps", imageName: "Rise up abs", description: "Before initiating the movement, consciously tighten your abdominal muscles. Use your core muscles to lift your upper body off the floor, bringing your chest towards your knees."),
                
                Exercise(id: 7, details: "1 set x 22 reps", imageName: "Sat down skipping abs", description: ""),
                
                Exercise(id: 8, details: "1 set x 30 secs", imageName: "Side plank", description: "Lie on your side with your knees bent. Prop your upper body up on your elbow, with your elbow under your shoulder. Raise your hips off the floor."),
            ]
        }
    }
}

