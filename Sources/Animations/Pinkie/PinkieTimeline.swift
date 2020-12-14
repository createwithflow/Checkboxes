// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class PinkieTimeline: Timeline {
    public convenience init(view: PinkieView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = PinkieTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: PinkieView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for circleBackground
        let position_x_circleBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [16, 3, 3]
            keyframeAnimation.keyTimes = [0, 0.868421, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_circleBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [16, 3, 3]
            keyframeAnimation.keyTimes = [0, 0.868421, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_circleBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [1, 26, 26]
            keyframeAnimation.keyTimes = [0, 0.868421, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_circleBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [1, 26, 26]
            keyframeAnimation.keyTimes = [0, 0.868421, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_circleBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.131579, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_circleBackground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0.5,1c0.275,0,0.5,-0.225,0.5,-0.5 0,-0.275,-0.225,-0.5,-0.5,-0.5 -0.275,0,-0.5,0.225,-0.5,0.5 0,0.275,0.225,0.5,0.5,0.5zM0.5,1")!, CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!, CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!]
            keyframeAnimation.keyTimes = [0, 0.868421, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for checkForeground
        let position_x_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [13.34, 13.34, 12.87, 10]
            keyframeAnimation.keyTimes = [0, 0.131579, 0.605263, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [14.27, 14.27, 13.95, 12]
            keyframeAnimation.keyTimes = [0, 0.131579, 0.605263, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [5.83, 5.83, 6.77, 12.5]
            keyframeAnimation.keyTimes = [0, 0.131579, 0.605263, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [3.96, 3.96, 4.6, 8.5]
            keyframeAnimation.keyTimes = [0, 0.131579, 0.605263, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.131579, 0.605263, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,2.096l1.866,1.864 3.964,-3.96")!, CGPathCreateWithSVGString("M0,2.096l1.866,1.864 3.964,-3.96")!, CGPathCreateWithSVGString("M0,2.435l2.166,2.165 4.604,-4.6")!, CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!]
            keyframeAnimation.keyTimes = [0, 0.131579, 0.605263, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.circleBackground.layer] = [position_y_circleBackground, opacity_circleBackground, position_x_circleBackground, path_circleBackground, bounds_size_width_circleBackground, bounds_size_height_circleBackground]
        animationsByLayer[view.checkForeground.layer] = [bounds_size_width_checkForeground, bounds_size_height_checkForeground, path_checkForeground, position_y_checkForeground, opacity_checkForeground, position_x_checkForeground]

        return animationsByLayer 
    }
}