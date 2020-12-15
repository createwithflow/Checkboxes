// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class ZomboTimeline: Timeline {
    public convenience init(view: ZomboView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = ZomboTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: ZomboView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for border
        let strokecolor_border: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeColor"
            keyframeAnimation.values = [UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor, UIColor(red: 0.573, green: 0.573, blue: 0.573, alpha: 1).cgColor, UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for checkLeft
        let strokecolor_checkLeft: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeColor"
            keyframeAnimation.values = [UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor, UIColor(red: 0.573, green: 0.573, blue: 0.573, alpha: 1).cgColor, UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let strokestart_checkLeft: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 0.47, 0]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let strokeend_checkLeft: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeEnd"
            keyframeAnimation.values = [1.001, 1.001, 0.45]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for checkRight
        let strokecolor_checkRight: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeColor"
            keyframeAnimation.values = [UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor, UIColor(red: 0.573, green: 0.573, blue: 0.573, alpha: 1).cgColor, UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let strokestart_checkRight: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 0.64, 0]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let strokeend_checkRight: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeEnd"
            keyframeAnimation.values = [1.001, 1.001, 0.63]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.checkRight.layer] = [strokeend_checkRight, strokecolor_checkRight, strokestart_checkRight]
        animationsByLayer[view.border.layer] = [strokecolor_border]
        animationsByLayer[view.checkLeft.layer] = [strokecolor_checkLeft, strokestart_checkLeft, strokeend_checkLeft]

        return animationsByLayer 
    }
}