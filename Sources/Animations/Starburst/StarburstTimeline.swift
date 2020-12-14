// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class StarburstTimeline: Timeline {
    public convenience init(view: StarburstView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = StarburstTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: StarburstView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for star
        let position_x_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [3.06, 14.95, 14.95, 3.06, 3.06]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.348485, 0.606061, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [3.44, 14.79, 14.79, 3.44, 3.44]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.348485, 0.606061, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [25.89, 2.11, 2.11, 25.89, 25.89]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.348485, 0.606061, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [24.72, 2.01, 2.01, 24.72, 24.72]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.348485, 0.606061, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [1, 1, 0, 0, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.257576, 0.348485, 0.606061, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M12.033,0.591c0.353,-0.787,1.471,-0.787,1.825,0l3.015,6.716c0.145,0.324,0.452,0.547,0.805,0.585l7.319,0.791c0.858,0.093,1.204,1.156,0.564,1.735l-5.456,4.942c-0.263,0.238,-0.38,0.599,-0.307,0.946l1.509,7.206c0.177,0.845,-0.728,1.502,-1.476,1.073l-6.387,-3.662c-0.308,-0.177,-0.687,-0.177,-0.995,0l-6.387,3.662c-0.749,0.429,-1.653,-0.228,-1.476,-1.073l1.509,-7.206c0.073,-0.348,-0.044,-0.708,-0.307,-0.946l-5.456,-4.942c-0.64,-0.579,-0.294,-1.643,0.564,-1.735l7.319,-0.791c0.353,-0.038,0.659,-0.261,0.805,-0.585l3.015,-6.716 0,0zM12.033,0.591")!, CGPathCreateWithSVGString("M0.981,0.048c0.029,-0.064,0.12,-0.064,0.149,0l0.246,0.546c0.012,0.026,0.037,0.044,0.066,0.048l0.597,0.064c0.07,0.008,0.098,0.094,0.046,0.141l-0.445,0.402c-0.021,0.019,-0.031,0.049,-0.025,0.077l0.123,0.586c0.014,0.069,-0.059,0.122,-0.12,0.087l-0.521,-0.298c-0.025,-0.014,-0.056,-0.014,-0.081,0l-0.521,0.298c-0.061,0.035,-0.135,-0.019,-0.12,-0.087l0.123,-0.586c0.006,-0.028,-0.004,-0.058,-0.025,-0.077l-0.445,-0.402c-0.052,-0.047,-0.024,-0.134,0.046,-0.141l0.597,-0.064c0.029,-0.003,0.054,-0.021,0.066,-0.048l0.246,-0.546 0,0zM0.981,0.048")!, CGPathCreateWithSVGString("M0.981,0.048c0.029,-0.064,0.12,-0.064,0.149,0l0.246,0.546c0.012,0.026,0.037,0.044,0.066,0.048l0.597,0.064c0.07,0.008,0.098,0.094,0.046,0.141l-0.445,0.402c-0.021,0.019,-0.031,0.049,-0.025,0.077l0.123,0.586c0.014,0.069,-0.059,0.122,-0.12,0.087l-0.521,-0.298c-0.025,-0.014,-0.056,-0.014,-0.081,0l-0.521,0.298c-0.061,0.035,-0.135,-0.019,-0.12,-0.087l0.123,-0.586c0.006,-0.028,-0.004,-0.058,-0.025,-0.077l-0.445,-0.402c-0.052,-0.047,-0.024,-0.134,0.046,-0.141l0.597,-0.064c0.029,-0.003,0.054,-0.021,0.066,-0.048l0.246,-0.546 0,0zM0.981,0.048")!, CGPathCreateWithSVGString("M12.033,0.591c0.353,-0.787,1.471,-0.787,1.825,0l3.015,6.716c0.145,0.324,0.452,0.547,0.805,0.585l7.319,0.791c0.858,0.093,1.204,1.156,0.564,1.735l-5.456,4.942c-0.263,0.238,-0.38,0.599,-0.307,0.946l1.509,7.206c0.177,0.845,-0.728,1.502,-1.476,1.073l-6.387,-3.662c-0.308,-0.177,-0.687,-0.177,-0.995,0l-6.387,3.662c-0.749,0.429,-1.653,-0.228,-1.476,-1.073l1.509,-7.206c0.073,-0.348,-0.044,-0.708,-0.307,-0.946l-5.456,-4.942c-0.64,-0.579,-0.294,-1.643,0.564,-1.735l7.319,-0.791c0.353,-0.038,0.659,-0.261,0.805,-0.585l3.015,-6.716 0,0zM12.033,0.591")!, CGPathCreateWithSVGString("M12.033,0.591c0.353,-0.787,1.471,-0.787,1.825,0l3.015,6.716c0.145,0.324,0.452,0.547,0.805,0.585l7.319,0.791c0.858,0.093,1.204,1.156,0.564,1.735l-5.456,4.942c-0.263,0.238,-0.38,0.599,-0.307,0.946l1.509,7.206c0.177,0.845,-0.728,1.502,-1.476,1.073l-6.387,-3.662c-0.308,-0.177,-0.687,-0.177,-0.995,0l-6.387,3.662c-0.749,0.429,-1.653,-0.228,-1.476,-1.073l1.509,-7.206c0.073,-0.348,-0.044,-0.708,-0.307,-0.946l-5.456,-4.942c-0.64,-0.579,-0.294,-1.643,0.564,-1.735l7.319,-0.791c0.353,-0.038,0.659,-0.261,0.805,-0.585l3.015,-6.716 0,0zM12.033,0.591")!]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.348485, 0.606061, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut, CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let fillcolor_star: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "fillColor"
            keyframeAnimation.values = [UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor, UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor, UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor, UIColor(red: 0.086, green: 0.086, blue: 0.114, alpha: 1).cgColor, UIColor(red: 0.086, green: 0.086, blue: 0.114, alpha: 1).cgColor, UIColor(red: 0.086, green: 0.086, blue: 0.114, alpha: 1).cgColor]
            keyframeAnimation.keyTimes = [0, 0.257576, 0.287879, 0.30303, 0.348485, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for circle
        let position_x_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [15.04, 15.04, -5.86, -5.86]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [15.04, 15.04, -5.86, -5.86]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [1.93, 1.93, 43.74, 43.74]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [1.93, 1.93, 43.74, 43.74]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.30303, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0.965,1.93c0.531,0,0.965,-0.434,0.965,-0.965 0,-0.531,-0.434,-0.965,-0.965,-0.965 -0.531,0,-0.965,0.434,-0.965,0.965 0,0.531,0.434,0.965,0.965,0.965zM0.965,1.93")!, CGPathCreateWithSVGString("M0.965,1.93c0.531,0,0.965,-0.434,0.965,-0.965 0,-0.531,-0.434,-0.965,-0.965,-0.965 -0.531,0,-0.965,0.434,-0.965,0.965 0,0.531,0.434,0.965,0.965,0.965zM0.965,1.93")!, CGPathCreateWithSVGString("M21.87,43.74c12.029,0,21.87,-9.841,21.87,-21.87 0,-12.029,-9.841,-21.87,-21.87,-21.87 -12.029,0,-21.87,9.842,-21.87,21.87 0,12.029,9.842,21.87,21.87,21.87zM21.87,43.74")!, CGPathCreateWithSVGString("M21.87,43.74c12.029,0,21.87,-9.841,21.87,-21.87 0,-12.029,-9.841,-21.87,-21.87,-21.87 -12.029,0,-21.87,9.842,-21.87,21.87 0,12.029,9.842,21.87,21.87,21.87zM21.87,43.74")!]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let linewidth_circle: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "lineWidth"
            keyframeAnimation.values = [5, 5, 10, 5, 5]
            keyframeAnimation.keyTimes = [0, 0.106061, 0.30303, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeIn, .easeOut, .easeIn]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for burst
        let transform_rotation_z_burst: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0, 0.785398]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_burst: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.484848, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d0
        let strokestart_d0: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d1
        let strokestart_d1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d2
        let strokestart_d2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d3
        let strokestart_d3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d4
        let strokestart_d4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d5
        let strokestart_d5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d6
        let strokestart_d6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for d7
        let strokestart_d7: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "strokeStart"
            keyframeAnimation.values = [0.88, 0.88, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 0.893939, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.star.layer] = [bounds_size_height_star, position_x_star, path_star, position_y_star, fillcolor_star, bounds_size_width_star, opacity_star]
        animationsByLayer[view.d1.layer] = [strokestart_d1]
        animationsByLayer[view.d3.layer] = [strokestart_d3]
        animationsByLayer[view.burst.layer] = [transform_rotation_z_burst, opacity_burst]
        animationsByLayer[view.d5.layer] = [strokestart_d5]
        animationsByLayer[view.d2.layer] = [strokestart_d2]
        animationsByLayer[view.d4.layer] = [strokestart_d4]
        animationsByLayer[view.d6.layer] = [strokestart_d6]
        animationsByLayer[view.circle.layer] = [opacity_circle, position_x_circle, linewidth_circle, path_circle, position_y_circle, bounds_size_width_circle, bounds_size_height_circle]
        animationsByLayer[view.d0.layer] = [strokestart_d0]
        animationsByLayer[view.d7.layer] = [strokestart_d7]

        return animationsByLayer 
    }
}