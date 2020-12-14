// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class SlicesTimeline: Timeline {
    public convenience init(view: SlicesView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = SlicesTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: SlicesView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for r0
        let position_x_r0: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-4, -5.53]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_r0: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-20, -0.58]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for r1
        let position_x_r1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [28, 11]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_r1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [23, -1.53]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for r2
        let position_x_r2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [13, 7]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_r2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [44, 23.47]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for r3
        let position_x_r3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-22, -16]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_r3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [38, 25.47]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for r4
        let position_x_r4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-31, -18]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_r4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-2, 3.47]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.r3.layer] = [position_x_r3, position_y_r3]
        animationsByLayer[view.r1.layer] = [position_x_r1, position_y_r1]
        animationsByLayer[view.r4.layer] = [position_x_r4, position_y_r4]
        animationsByLayer[view.r2.layer] = [position_x_r2, position_y_r2]
        animationsByLayer[view.r0.layer] = [position_x_r0, position_y_r0]

        return animationsByLayer 
    }
}