// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class CheckInTimeline: Timeline {
    public convenience init(view: CheckInView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = CheckInTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: CheckInView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for inner
        let position_x_inner: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-18.02, -18.02, 2, 2]
            keyframeAnimation.keyTimes = [0, 0.5, 0.85, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_inner: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-18.02, -18.02, 2, 2]
            keyframeAnimation.keyTimes = [0, 0.5, 0.85, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_inner: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [68.03, 68.03, 28, 28]
            keyframeAnimation.keyTimes = [0, 0.5, 0.85, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_inner: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [68.03, 68.03, 28, 28]
            keyframeAnimation.keyTimes = [0, 0.5, 0.85, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_inner: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.85, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_inner: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M34.015,68.03c18.708,0,34.015,-15.307,34.015,-34.015 0,-18.708,-15.307,-34.015,-34.015,-34.015 -18.708,0,-34.015,15.307,-34.015,34.015 0,18.708,15.307,34.015,34.015,34.015zM34.015,68.03")!, CGPathCreateWithSVGString("M34.015,68.03c18.708,0,34.015,-15.307,34.015,-34.015 0,-18.708,-15.307,-34.015,-34.015,-34.015 -18.708,0,-34.015,15.307,-34.015,34.015 0,18.708,15.307,34.015,34.015,34.015zM34.015,68.03")!, CGPathCreateWithSVGString("M14,28c7.7,0,14,-6.3,14,-14 0,-7.7,-6.3,-14,-14,-14 -7.7,0,-14,6.3,-14,14 0,7.7,6.3,14,14,14zM14,28")!, CGPathCreateWithSVGString("M14,28c7.7,0,14,-6.3,14,-14 0,-7.7,-6.3,-14,-14,-14 -7.7,0,-14,6.3,-14,14 0,7.7,6.3,14,14,14zM14,28")!]
            keyframeAnimation.keyTimes = [0, 0.5, 0.85, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for outer
        let strokeend_outer: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeEnd"
            keyframeAnimation.values = [0, 0, 1.001, 1.001]
            keyframeAnimation.keyTimes = [0, 0.02, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for check
        let strokeend_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeEnd"
            keyframeAnimation.values = [0, 0, 1.001]
            keyframeAnimation.keyTimes = [0, 0.75, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.inner.layer] = [opacity_inner, path_inner, position_x_inner, bounds_size_height_inner, bounds_size_width_inner, position_y_inner]
        animationsByLayer[view.outer.layer] = [strokeend_outer]
        animationsByLayer[view.check.layer] = [strokeend_check]

        return animationsByLayer 
    }
}