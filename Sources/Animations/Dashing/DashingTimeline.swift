// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class DashingTimeline: Timeline {
    public convenience init(view: DashingView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = DashingTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: DashingView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for overlay
        let position_x_overlay: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [2, 2, 15.02, 15.02]
            keyframeAnimation.keyTimes = [0, 0.424242, 0.712121, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_overlay: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [2, 2, 15.02, 15.02]
            keyframeAnimation.keyTimes = [0, 0.424242, 0.712121, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_overlay: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [28, 28, 1.96, 1.96]
            keyframeAnimation.keyTimes = [0, 0.424242, 0.712121, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_overlay: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [28, 28, 1.96, 1.96]
            keyframeAnimation.keyTimes = [0, 0.424242, 0.712121, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_overlay: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.424242, 0.712121, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_overlay: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M14,28c7.7,0,14,-6.3,14,-14 0,-7.7,-6.3,-14,-14,-14 -7.7,0,-14,6.3,-14,14 0,7.7,6.3,14,14,14zM14,28")!, CGPathCreateWithSVGString("M14,28c7.7,0,14,-6.3,14,-14 0,-7.7,-6.3,-14,-14,-14 -7.7,0,-14,6.3,-14,14 0,7.7,6.3,14,14,14zM14,28")!, CGPathCreateWithSVGString("M0.98,1.96c0.539,0,0.98,-0.441,0.98,-0.98 0,-0.539,-0.441,-0.98,-0.98,-0.98 -0.539,0,-0.98,0.441,-0.98,0.98 0,0.539,0.441,0.98,0.98,0.98zM0.98,1.96")!, CGPathCreateWithSVGString("M0.98,1.96c0.539,0,0.98,-0.441,0.98,-0.98 0,-0.539,-0.441,-0.98,-0.98,-0.98 -0.539,0,-0.98,0.441,-0.98,0.98 0,0.539,0.441,0.98,0.98,0.98zM0.98,1.96")!]
            keyframeAnimation.keyTimes = [0, 0.424242, 0.712121, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for check
        let linewidth_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "lineWidth"
            keyframeAnimation.values = [0, 0, 5, 3]
            keyframeAnimation.keyTimes = [0, 0.712121, 0.939394, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for dash1
        let transform_rotation_z_dash1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0.122173, -0.0698132, -0.0698132]
            keyframeAnimation.keyTimes = [0, 0.424242, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let strokecolor_dash1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeColor"
            keyframeAnimation.values = [UIColor.white.cgColor, UIColor.white.cgColor, UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor, UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor]
            keyframeAnimation.keyTimes = [0, 0.212121, 0.424242, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for dash2
        let transform_rotation_z_dash2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0.122173, 0.314159, 0.314159]
            keyframeAnimation.keyTimes = [0, 0.424242, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let strokecolor_dash2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeColor"
            keyframeAnimation.values = [UIColor.white.cgColor, UIColor.white.cgColor, UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor, UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor]
            keyframeAnimation.keyTimes = [0, 0.212121, 0.424242, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.check.layer] = [linewidth_check]
        animationsByLayer[view.overlay.layer] = [position_x_overlay, path_overlay, position_y_overlay, bounds_size_width_overlay, opacity_overlay, bounds_size_height_overlay]
        animationsByLayer[view.dash1.layer] = [strokecolor_dash1, transform_rotation_z_dash1]
        animationsByLayer[view.dash2.layer] = [transform_rotation_z_dash2, strokecolor_dash2]

        return animationsByLayer 
    }
}