// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class BurstReverseTimeline: Timeline {
    public convenience init(view: BurstView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = BurstReverseTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: BurstView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for burstGroup
        let opacity_burstGroup: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 0, 0.01, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0133333, 0.96, 0.973333, 0.986667, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .linear, .linear, .linear]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst11
        let position_x_burst11: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [26, 26, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0933333, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst11: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [3, 3, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0933333, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst10
        let position_x_burst10: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [15, 15, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.08, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst10: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-18, -18, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.08, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst9
        let position_x_burst9: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.12, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst9: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-22, -22, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.12, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst8
        let position_x_burst8: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-18, -18, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.106667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst8: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-18, -18, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.106667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst7
        let position_x_burst7: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-25, -25, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0666667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst7: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [14, 14, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0666667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst6
        let position_x_burst6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [2, 2, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0666667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [25, 25, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0666667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst5
        let position_x_burst5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [20, 20, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.173333, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [12, 12, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.173333, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst4
        let position_x_burst4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [17, 17, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.133333, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-4, -4, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.133333, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst3
        let position_x_burst3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [16, 16, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.16, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [23, 23, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.16, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst2
        let position_x_burst2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-15, -15, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.106667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [22, 22, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.106667, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst1
        let position_x_burst1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-26, -26, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.16, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_burst1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-11, -11, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.16, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst0
        let position_x_burst0: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-25, -25, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.133333, 0.453333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for circleBackgroundMask
        let position_y_circleBackgroundMask: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [26, 26, 52]
            keyframeAnimation.keyTimes = [0, 0.333333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.895, 0.03, 0.685, 0.22)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for checkForeground
        let position_y_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [9, 9, 35]
            keyframeAnimation.keyTimes = [0, 0.333333, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.47, 0, 0.745, 0.715)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.burst8.layer] = [position_x_burst8, position_y_burst8]
        animationsByLayer[view.checkForeground.layer] = [position_y_checkForeground]
        animationsByLayer[view.burst6.layer] = [position_y_burst6, position_x_burst6]
        animationsByLayer[view.burst9.layer] = [position_x_burst9, position_y_burst9]
        animationsByLayer[view.burst10.layer] = [position_x_burst10, position_y_burst10]
        animationsByLayer[view.burst7.layer] = [position_y_burst7, position_x_burst7]
        animationsByLayer[view.circleBackgroundMask.layer] = [position_y_circleBackgroundMask]
        animationsByLayer[view.burst4.layer] = [position_x_burst4, position_y_burst4]
        animationsByLayer[view.burst1.layer] = [position_x_burst1, position_y_burst1]
        animationsByLayer[view.burst3.layer] = [position_y_burst3, position_x_burst3]
        animationsByLayer[view.burst0.layer] = [position_x_burst0]
        animationsByLayer[view.burst5.layer] = [position_x_burst5, position_y_burst5]
        animationsByLayer[view.burst11.layer] = [position_y_burst11, position_x_burst11]
        animationsByLayer[view.burst2.layer] = [position_y_burst2, position_x_burst2]
        animationsByLayer[view.burstGroup.layer] = [opacity_burstGroup]

        return animationsByLayer 
    }
}