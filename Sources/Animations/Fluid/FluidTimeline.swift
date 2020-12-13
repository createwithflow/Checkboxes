// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class FluidTimeline: Timeline {
    public convenience init(view: FluidView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = FluidTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: FluidView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for whiteBackground
        let position_x_whiteBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [0, 11.82, 11.82]
            keyframeAnimation.keyTimes = [0, 0.469697, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_whiteBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [0, 11.82, 11.82]
            keyframeAnimation.keyTimes = [0, 0.469697, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_whiteBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [26, 2.37, 2.37]
            keyframeAnimation.keyTimes = [0, 0.469697, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_whiteBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [26, 2.37, 2.37]
            keyframeAnimation.keyTimes = [0, 0.469697, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_whiteBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.287879, 0.469697, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_whiteBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,4c0,-2.209,1.791,-4,4,-4l18,0c2.209,0,4,1.791,4,4l0,18c0,2.209,-1.791,4,-4,4l-18,0c-2.209,0,-4,-1.791,-4,-4l0,-18 0,0zM0,4")!, CGPathCreateWithSVGString("M0,0.365c0,-0.201,0.163,-0.365,0.365,-0.365l1.641,0c0.201,0,0.365,0.163,0.365,0.365l0,1.641c0,0.201,-0.163,0.365,-0.365,0.365l-1.641,0c-0.201,0,-0.365,-0.163,-0.365,-0.365l0,-1.641 0,0zM0,0.365")!, CGPathCreateWithSVGString("M0,0.365c0,-0.201,0.163,-0.365,0.365,-0.365l1.641,0c0.201,0,0.365,0.163,0.365,0.365l0,1.641c0,0.201,-0.163,0.365,-0.365,0.365l-1.641,0c-0.201,0,-0.365,-0.163,-0.365,-0.365l0,-1.641 0,0zM0,0.365")!]
            keyframeAnimation.keyTimes = [0, 0.469697, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for check
        let strokestart_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.2, 0.2]
            keyframeAnimation.keyTimes = [0, 0.530303, 0.939394, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let strokeend_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeEnd"
            keyframeAnimation.values = [1.001, 1.001, 0.7]
            keyframeAnimation.keyTimes = [0, 0.606061, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.5)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.check.layer] = [strokeend_check, strokestart_check]
        animationsByLayer[view.whiteBackground.layer] = [bounds_size_height_whiteBackground, bounds_size_width_whiteBackground, path_whiteBackground, position_y_whiteBackground, position_x_whiteBackground, opacity_whiteBackground]

        return animationsByLayer 
    }
}