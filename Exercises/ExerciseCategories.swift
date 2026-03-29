extension Category {
    var exercises: [Exercise] {
        switch self {
        case .arms:
            return [
                Exercise(id: 1, details: "1 set x 12 reps", imageName: "Bicep curl flat grab", description: "Keep your elbows close to your body, engage your core, and curl the weight up towards youm Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchr chest while keeping your upper arms stationary"),
                
                Exercise(id: 2, details: "1 set x 12 reps", imageName: "Bicep curl neutral grab", description: "Hold a dumbbell with your hand in a neutral grab. Keep your elbow close to your body. "),
                
                Exercise(id: 3, details: "1 sets x 10 reps", imageName: "Dumbbell lateral raises arms", description: "Hold a dumbbell in each hand by your sides, palms facing forward. Inhale and lower the weight with control back to the starting position."),
                
                Exercise(id: 4, details: "1 set x 10 reps", imageName: "Shoulder press arms", description: "Uplift maintaining neutral spine. Elbows inline with hips. Push straight up. Come down to 90º."),
                
                Exercise(id: 5, details: "1 set to failiure", imageName: "Shoulders arms", description: "Stand with the bar on your front shoulders. Lock your elbows at the top, and shrug your shoulders to the ceiling."),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Stand up bicep curl", description: "Stand with feet shoulder-width apart, holding a dumbbell in each hand with palms facing forward. "),
                
                Exercise(id: 7, details: "2 set. x 12 reps", imageName: "Tricep arms", description: "Engage your core and keep your elbows close to your sides, initiating the movement with a controlled push-down, extending your arms fully."),
                
                Exercise(id: 8, details: "1 sets x 10 reps", imageName: "Triceps arm", description: "Stand with feet shoulder-width apart, holding a dumbbell in each hand with palms facing inward."),
            ]
        
        
        case .pecho:
            return [
                Exercise(id: 1, details: "1 set x Maxi", imageName: "Bench press chest", description: "Lie flat on a bench, grip the bar slightly wider than shoulder-width, and lower it to your chest while keeping your elbows at a 45-degree angle, then press back up."),
                
                Exercise(id: 2, details: "1 set x 12 reps", imageName: "Chest dips pecho", description: "Set up on the bar, gripping with both hands. Lean slightly forward, lowering as far as you can. Engage core"),
                
                Exercise(id: 3, details: "1 sets x 12 reps", imageName: "Forward chest", description: "Maintain a neutral wrist position with your wrists in line with your forearm."),
                
                Exercise(id: 4, details: "1 set x 12 reps", imageName: "Incline dumbbells press", description: "Adjust the bench to an incline of 15–30 degrees. Sit on the bench and place two dumbbells in the creases of your hips."),
                
                Exercise(id: 5, details: "1 set to 6", imageName: "Open fly chest", description: "Focus on controlled movements, maintaining a slight bend in the elbows, and engaging the chest muscles throughout"),
                
                Exercise(id: 6, details: "1 set x 10 reps", imageName: "Stand up bicep curl", description: "Lower the dumbbells back down in a controlled manner to the starting position."),
                
                Exercise(id: 7, details: "1 set. x 12 reps", imageName: "Opening chest", description: "Lift arms up above the head so they’re extended but not locked out. There should be a slight bend at your elbow."),
                
                Exercise(id: 8, details: "1 sets x 20 reps", imageName: "Push up chest", description: "Start in a high plank position. Place your hands on the ground and position them shoulder width apart. Lower your entire body. Pause at the bottom"),
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

