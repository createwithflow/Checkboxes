// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class TickTimeline: Timeline {
    public convenience init(view: TickView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = TickTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: TickView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for innerBox
        let position_x_innerBox: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [4, 15, 15]
            keyframeAnimation.keyTimes = [0, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_innerBox: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [4, 15, 15]
            keyframeAnimation.keyTimes = [0, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_innerBox: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [24, 2, 2]
            keyframeAnimation.keyTimes = [0, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_innerBox: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [24, 2, 2]
            keyframeAnimation.keyTimes = [0, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_innerBox: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_innerBox: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M2,0c-1.105,0,-2,0.895,-2,2l0,20c0,1.105,0.895,2,2,2l20,0c1.105,0,2,-0.895,2,-2l0,-20c0,-1.105,-0.895,-2,-2,-2l-20,0 0,0zM2,0")!, CGPathCreateWithSVGString("M0.167,0c-0.092,0,-0.167,0.075,-0.167,0.167l0,1.667c0,0.092,0.075,0.167,0.167,0.167l1.667,0c0.092,0,0.167,-0.075,0.167,-0.167l0,-1.667c0,-0.092,-0.075,-0.167,-0.167,-0.167l-1.667,0 0,0zM0.167,0")!, CGPathCreateWithSVGString("M0.167,0c-0.092,0,-0.167,0.075,-0.167,0.167l0,1.667c0,0.092,0.075,0.167,0.167,0.167l1.667,0c0.092,0,0.167,-0.075,0.167,-0.167l0,-1.667c0,-0.092,-0.075,-0.167,-0.167,-0.167l-1.667,0 0,0zM0.167,0")!]
            keyframeAnimation.keyTimes = [0, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for check
        let strokeend_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeEnd"
            keyframeAnimation.values = [0, 0, 1.001]
            keyframeAnimation.keyTimes = [0, 0.515152, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.innerBox.layer] = [bounds_size_height_innerBox, bounds_size_width_innerBox, opacity_innerBox, position_x_innerBox, position_y_innerBox, path_innerBox]
        animationsByLayer[view.check.layer] = [strokeend_check]

        return animationsByLayer 
    }
}