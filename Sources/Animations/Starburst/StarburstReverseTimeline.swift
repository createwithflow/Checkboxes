// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class StarburstReverseTimeline: Timeline {
    public convenience init(view: StarburstView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = StarburstReverseTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: StarburstView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for star
        let position_x_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [3.06, 1.49, 3.06, 3.06]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [3.44, 1.94, 3.44, 3.44]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [25.89, 29.03, 25.89, 25.89]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [24.72, 27.72, 24.72, 24.72]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M12.033,0.591c0.353,-0.787,1.471,-0.787,1.825,0l3.015,6.716c0.145,0.324,0.452,0.547,0.805,0.585l7.319,0.791c0.858,0.093,1.204,1.156,0.564,1.735l-5.456,4.942c-0.263,0.238,-0.38,0.599,-0.307,0.946l1.509,7.206c0.177,0.845,-0.728,1.502,-1.476,1.073l-6.387,-3.662c-0.308,-0.177,-0.687,-0.177,-0.995,0l-6.387,3.662c-0.749,0.429,-1.653,-0.228,-1.476,-1.073l1.509,-7.206c0.073,-0.348,-0.044,-0.708,-0.307,-0.946l-5.456,-4.942c-0.64,-0.579,-0.294,-1.643,0.564,-1.735l7.319,-0.791c0.353,-0.038,0.659,-0.261,0.805,-0.585l3.015,-6.716 0,0zM12.033,0.591")!, CGPathCreateWithSVGString("M13.492,0.662c0.396,-0.883,1.65,-0.883,2.046,0l3.38,7.531c0.163,0.363,0.507,0.613,0.902,0.656l8.207,0.887c0.962,0.104,1.35,1.296,0.632,1.946l-6.118,5.542c-0.295,0.267,-0.426,0.671,-0.345,1.061l1.692,8.08c0.198,0.947,-0.816,1.684,-1.655,1.203l-7.161,-4.106c-0.345,-0.198,-0.77,-0.198,-1.116,0l-7.161,4.106c-0.84,0.481,-1.854,-0.255,-1.655,-1.203l1.692,-8.08c0.082,-0.39,-0.05,-0.794,-0.345,-1.061l-6.118,-5.542c-0.717,-0.65,-0.33,-1.842,0.632,-1.946l8.207,-0.887c0.396,-0.043,0.739,-0.292,0.902,-0.656l3.38,-7.531 0,0zM13.492,0.662")!, CGPathCreateWithSVGString("M12.033,0.591c0.353,-0.787,1.471,-0.787,1.825,0l3.015,6.716c0.145,0.324,0.452,0.547,0.805,0.585l7.319,0.791c0.858,0.093,1.204,1.156,0.564,1.735l-5.456,4.942c-0.263,0.238,-0.38,0.599,-0.307,0.946l1.509,7.206c0.177,0.845,-0.728,1.502,-1.476,1.073l-6.387,-3.662c-0.308,-0.177,-0.687,-0.177,-0.995,0l-6.387,3.662c-0.749,0.429,-1.653,-0.228,-1.476,-1.073l1.509,-7.206c0.073,-0.348,-0.044,-0.708,-0.307,-0.946l-5.456,-4.942c-0.64,-0.579,-0.294,-1.643,0.564,-1.735l7.319,-0.791c0.353,-0.038,0.659,-0.261,0.805,-0.585l3.015,-6.716 0,0zM12.033,0.591")!, CGPathCreateWithSVGString("M12.033,0.591c0.353,-0.787,1.471,-0.787,1.825,0l3.015,6.716c0.145,0.324,0.452,0.547,0.805,0.585l7.319,0.791c0.858,0.093,1.204,1.156,0.564,1.735l-5.456,4.942c-0.263,0.238,-0.38,0.599,-0.307,0.946l1.509,7.206c0.177,0.845,-0.728,1.502,-1.476,1.073l-6.387,-3.662c-0.308,-0.177,-0.687,-0.177,-0.995,0l-6.387,3.662c-0.749,0.429,-1.653,-0.228,-1.476,-1.073l1.509,-7.206c0.073,-0.348,-0.044,-0.708,-0.307,-0.946l-5.456,-4.942c-0.64,-0.579,-0.294,-1.643,0.564,-1.735l7.319,-0.791c0.353,-0.038,0.659,-0.261,0.805,-0.585l3.015,-6.716 0,0zM12.033,0.591")!]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1), .easeOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let fillcolor_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "fillColor"
            keyframeAnimation.values = [UIColor(red: 0.086, green: 0.086, blue: 0.114, alpha: 1).cgColor, UIColor(red: 0.086, green: 0.086, blue: 0.114, alpha: 1).cgColor, UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor, UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.757576, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for circle
        let position_x_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-5.86, -5.86, 15.04, 15.04]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-5.86, -5.86, 15.04, 15.04]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [43.74, 43.74, 1.93, 1.93]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [43.74, 43.74, 1.93, 1.93]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M21.87,43.74c12.029,0,21.87,-9.841,21.87,-21.87 0,-12.029,-9.841,-21.87,-21.87,-21.87 -12.029,0,-21.87,9.842,-21.87,21.87 0,12.029,9.842,21.87,21.87,21.87zM21.87,43.74")!, CGPathCreateWithSVGString("M21.87,43.74c12.029,0,21.87,-9.841,21.87,-21.87 0,-12.029,-9.841,-21.87,-21.87,-21.87 -12.029,0,-21.87,9.842,-21.87,21.87 0,12.029,9.842,21.87,21.87,21.87zM21.87,43.74")!, CGPathCreateWithSVGString("M0.965,1.93c0.531,0,0.965,-0.434,0.965,-0.965 0,-0.531,-0.434,-0.965,-0.965,-0.965 -0.531,0,-0.965,0.434,-0.965,0.965 0,0.531,0.434,0.965,0.965,0.965zM0.965,1.93")!, CGPathCreateWithSVGString("M0.965,1.93c0.531,0,0.965,-0.434,0.965,-0.965 0,-0.531,-0.434,-0.965,-0.965,-0.965 -0.531,0,-0.965,0.434,-0.965,0.965 0,0.531,0.434,0.965,0.965,0.965zM0.965,1.93")!]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let linewidth_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "lineWidth"
            keyframeAnimation.values = [5, 5, 10, 5, 5]
            keyframeAnimation.keyTimes = [0, 0.5, 0.69697, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeIn, .easeOut, .easeOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst
        let transform_rotation_z_burst: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0.785398, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_burst: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.0151515, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d0
        let strokestart_d0: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d1
        let strokestart_d1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d2
        let strokestart_d2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d3
        let strokestart_d3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d4
        let strokestart_d4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d5
        let strokestart_d5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d6
        let strokestart_d6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d7
        let strokestart_d7: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [1, 1, 0.92, 0.92]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.454545, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.burst.layer] = [opacity_burst, transform_rotation_z_burst]
        animationsByLayer[view.star.layer] = [path_star, position_y_star, fillcolor_star, position_x_star, bounds_size_width_star, bounds_size_height_star]
        animationsByLayer[view.circle.layer] = [bounds_size_width_circle, linewidth_circle, position_x_circle, path_circle, bounds_size_height_circle, position_y_circle]
        animationsByLayer[view.d6.layer] = [strokestart_d6]
        animationsByLayer[view.d0.layer] = [strokestart_d0]
        animationsByLayer[view.d5.layer] = [strokestart_d5]
        animationsByLayer[view.d7.layer] = [strokestart_d7]
        animationsByLayer[view.d4.layer] = [strokestart_d4]
        animationsByLayer[view.d3.layer] = [strokestart_d3]
        animationsByLayer[view.d2.layer] = [strokestart_d2]
        animationsByLayer[view.d1.layer] = [strokestart_d1]

        return animationsByLayer 
    }
}