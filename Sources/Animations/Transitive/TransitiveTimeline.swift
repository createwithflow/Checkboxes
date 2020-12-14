// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class TransitiveTimeline: Timeline {
    public convenience init(view: TransitiveView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = TransitiveTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: TransitiveView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for check
        let position_y_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [16, 16, 12]
            keyframeAnimation.keyTimes = [0, 0.368421, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,0l6.25,0 6.25,0")!, CGPathCreateWithSVGString("M0,0l6.25,0 6.25,0")!, CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!]
            keyframeAnimation.keyTimes = [0, 0.368421, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for circle
        let position_x_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [20, -10, -10]
            keyframeAnimation.keyTimes = [0, 0.684211, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [20, -10, -10]
            keyframeAnimation.keyTimes = [0, 0.684211, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.check.layer] = [position_y_check, path_check]
        animationsByLayer[view.circle.layer] = [position_y_circle, position_x_circle]

        return animationsByLayer 
    }
}