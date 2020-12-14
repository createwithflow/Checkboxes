// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class LayersTimeline: Timeline {
    public convenience init(view: LayersView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = LayersTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: LayersView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for circle
        let position_x_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [6, 10, 10]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [6, 10, 10]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [20, 12, 12]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [20, 12, 12]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M10,20c5.5,0,10,-4.5,10,-10 0,-5.5,-4.5,-10,-10,-10 -5.5,0,-10,4.5,-10,10 0,5.5,4.5,10,10,10zM10,20")!, CGPathCreateWithSVGString("M6,12c3.3,0,6,-2.7,6,-6 0,-3.3,-2.7,-6,-6,-6 -3.3,0,-6,2.7,-6,6 0,3.3,2.7,6,6,6zM6,12")!, CGPathCreateWithSVGString("M6,12c3.3,0,6,-2.7,6,-6 0,-3.3,-2.7,-6,-6,-6 -3.3,0,-6,2.7,-6,6 0,3.3,2.7,6,6,6zM6,12")!]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let linewidth_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "lineWidth"
            keyframeAnimation.values = [2, 10, 10]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for dot
        let opacity_dot: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for checkForeground
        let strokeend_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeEnd"
            keyframeAnimation.values = [0, 0, 1.001]
            keyframeAnimation.keyTimes = [0, 0.6, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.dot.layer] = [opacity_dot]
        animationsByLayer[view.checkForeground.layer] = [strokeend_checkForeground]
        animationsByLayer[view.circle.layer] = [bounds_size_width_circle, bounds_size_height_circle, position_y_circle, path_circle, position_x_circle, linewidth_circle]

        return animationsByLayer 
    }
}