// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class OvertTimeline: Timeline {
    public convenience init(view: OvertView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = OvertTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: OvertView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for background
        let opacity_background: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for cutout
        let position_x_cutout: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [4, 1]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_cutout: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [4, 1]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_cutout: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [24, 30]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_cutout: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [24, 30]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_cutout: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,1.5c-0,-0.823,0.677,-1.5,1.5,-1.5l21,0c0.823,0,1.5,0.677,1.5,1.5l0,21c0,0.823,-0.677,1.5,-1.5,1.5l-21,0c-0.823,0,-1.5,-0.677,-1.5,-1.5l0,-21zM0,1.5")!, CGPathCreateWithSVGString("M0,3c-0,-1.646,1.354,-3,3,-3l25.5,0c0.823,0,1.5,0.677,1.5,1.5l0,27c0,0.823,-0.677,1.5,-1.5,1.5l-27,0c-0.823,0,-1.5,-0.677,-1.5,-1.5l0,-25.5zM0,3")!]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for check
        let position_x_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [7, 7, 8.5]
            keyframeAnimation.keyTimes = [0, 0.1, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [9, 9, 10.5]
            keyframeAnimation.keyTimes = [0, 0.1, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [19, 19, 15.5]
            keyframeAnimation.keyTimes = [0, 0.1, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [14, 14, 11.5]
            keyframeAnimation.keyTimes = [0, 0.1, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.9, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M18.462,0.535c0.718,0.713,0.718,1.869,0,2.582l-10.419,10.348c-0.718,0.713,-1.882,0.713,-2.6,0l-4.903,-4.87c-0.718,-0.713,-0.718,-1.869,0,-2.582 0.718,-0.713,1.882,-0.713,2.6,0l3.603,3.578 9.119,-9.057c0.718,-0.713,1.882,-0.713,2.6,0l0,0zM18.462,0.535")!, CGPathCreateWithSVGString("M18.462,0.535c0.718,0.713,0.718,1.869,0,2.582l-10.419,10.348c-0.718,0.713,-1.882,0.713,-2.6,0l-4.903,-4.87c-0.718,-0.713,-0.718,-1.869,0,-2.582 0.718,-0.713,1.882,-0.713,2.6,0l3.603,3.578 9.119,-9.057c0.718,-0.713,1.882,-0.713,2.6,0l0,0zM18.462,0.535")!, CGPathCreateWithSVGString("M15.061,0.439c0.586,0.586,0.586,1.536,0,2.121l-8.5,8.5c-0.586,0.586,-1.536,0.586,-2.121,0l-4,-4c-0.586,-0.586,-0.586,-1.536,0,-2.121 0.586,-0.586,1.536,-0.586,2.121,0l2.939,2.939 7.439,-7.439c0.586,-0.586,1.536,-0.586,2.121,0l0,0zM15.061,0.439")!]
            keyframeAnimation.keyTimes = [0, 0.1, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.check.layer] = [bounds_size_height_check, path_check, bounds_size_width_check, opacity_check, position_y_check, position_x_check]
        animationsByLayer[view.background.layer] = [opacity_background]
        animationsByLayer[view.cutout.layer] = [path_cutout, position_x_cutout, bounds_size_height_cutout, bounds_size_width_cutout, position_y_cutout]

        return animationsByLayer 
    }
}