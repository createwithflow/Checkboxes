// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class AffirmTimeline: Timeline {
    public convenience init(view: AffirmView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = AffirmTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: AffirmView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for group
        let position_x_group: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [14.07, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_group: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [14.07, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_group: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [3.85, 30, 30]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_group: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [3.85, 30, 30]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_group: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 1, 1]
            keyframeAnimation.keyTimes = [0, 0.2, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for poly
        let position_x_poly: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [1.93, 15, 15]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_poly: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [1.93, 15, 15]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_poly: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0, 0.628319]
            keyframeAnimation.keyTimes = [0, 0.3, 1] 
            keyframeAnimation.timingFunctions = [.linear, CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_poly: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [3.85, 30, 30]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_poly: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [3.85, 30, 30]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_poly: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M1.791,0.129c0.075,-0.072,0.193,-0.072,0.268,0l0.274,0.265c0.043,0.041,0.102,0.061,0.161,0.052l0.378,-0.053c0.103,-0.015,0.199,0.055,0.217,0.157l0.066,0.376c0.01,0.058,0.047,0.109,0.099,0.137l0.337,0.179c0.092,0.049,0.128,0.161,0.083,0.255l-0.168,0.343c-0.026,0.053,-0.026,0.116,0,0.169l0.168,0.343c0.046,0.093,0.009,0.206,-0.083,0.255l-0.337,0.179c-0.052,0.028,-0.089,0.078,-0.099,0.137l-0.066,0.376c-0.018,0.102,-0.114,0.172,-0.217,0.157l-0.378,-0.053c-0.059,-0.008,-0.118,0.011,-0.161,0.052l-0.274,0.265c-0.075,0.072,-0.193,0.072,-0.268,0l-0.274,-0.265c-0.043,-0.041,-0.102,-0.061,-0.161,-0.052l-0.378,0.053c-0.103,0.015,-0.199,-0.055,-0.217,-0.157l-0.066,-0.376c-0.01,-0.058,-0.047,-0.109,-0.099,-0.137l-0.337,-0.179c-0.092,-0.049,-0.128,-0.161,-0.083,-0.255l0.168,-0.343c0.026,-0.053,0.026,-0.116,0,-0.169l-0.168,-0.343c-0.046,-0.093,-0.009,-0.206,0.083,-0.255l0.337,-0.179c0.052,-0.028,0.089,-0.078,0.099,-0.137l0.066,-0.376c0.018,-0.102,0.114,-0.172,0.217,-0.157l0.378,0.053c0.059,0.008,0.118,-0.011,0.161,-0.052l0.274,-0.265 0,0zM1.791,0.129")!, CGPathCreateWithSVGString("M13.957,1.009c0.581,-0.563,1.504,-0.563,2.086,0l2.138,2.069c0.332,0.322,0.795,0.472,1.253,0.407l2.946,-0.417c0.801,-0.113,1.548,0.429,1.688,1.226l0.514,2.93c0.08,0.456,0.366,0.849,0.774,1.066l2.628,1.394c0.715,0.379,1,1.257,0.645,1.984l-1.307,2.673c-0.203,0.416,-0.203,0.902,0,1.318l1.307,2.673c0.355,0.727,0.07,1.605,-0.645,1.984l-2.628,1.394c-0.409,0.217,-0.694,0.61,-0.774,1.066l-0.514,2.93c-0.14,0.797,-0.886,1.339,-1.688,1.226l-2.946,-0.417c-0.458,-0.065,-0.921,0.085,-1.253,0.407l-2.138,2.069c-0.581,0.562,-1.504,0.562,-2.086,0l-2.138,-2.069c-0.332,-0.322,-0.795,-0.472,-1.253,-0.407l-2.946,0.417c-0.801,0.113,-1.548,-0.429,-1.688,-1.226l-0.514,-2.93c-0.08,-0.456,-0.366,-0.849,-0.774,-1.066l-2.628,-1.394c-0.715,-0.379,-1,-1.257,-0.645,-1.984l1.307,-2.673c0.203,-0.416,0.203,-0.902,0,-1.318l-1.307,-2.673c-0.355,-0.727,-0.07,-1.605,0.645,-1.984l2.628,-1.394c0.409,-0.217,0.694,-0.61,0.774,-1.066l0.514,-2.93c0.14,-0.797,0.886,-1.339,1.688,-1.226l2.946,0.417c0.458,0.065,0.921,-0.085,1.253,-0.407l2.138,-2.069 0,0zM13.957,1.009")!, CGPathCreateWithSVGString("M13.957,1.009c0.581,-0.563,1.504,-0.563,2.086,0l2.138,2.069c0.332,0.322,0.795,0.472,1.253,0.407l2.946,-0.417c0.801,-0.113,1.548,0.429,1.688,1.226l0.514,2.93c0.08,0.456,0.366,0.849,0.774,1.066l2.628,1.394c0.715,0.379,1,1.257,0.645,1.984l-1.307,2.673c-0.203,0.416,-0.203,0.902,0,1.318l1.307,2.673c0.355,0.727,0.07,1.605,-0.645,1.984l-2.628,1.394c-0.409,0.217,-0.694,0.61,-0.774,1.066l-0.514,2.93c-0.14,0.797,-0.886,1.339,-1.688,1.226l-2.946,-0.417c-0.458,-0.065,-0.921,0.085,-1.253,0.407l-2.138,2.069c-0.581,0.562,-1.504,0.562,-2.086,0l-2.138,-2.069c-0.332,-0.322,-0.795,-0.472,-1.253,-0.407l-2.946,0.417c-0.801,0.113,-1.548,-0.429,-1.688,-1.226l-0.514,-2.93c-0.08,-0.456,-0.366,-0.849,-0.774,-1.066l-2.628,-1.394c-0.715,-0.379,-1,-1.257,-0.645,-1.984l1.307,-2.673c0.203,-0.416,0.203,-0.902,0,-1.318l-1.307,-2.673c-0.355,-0.727,-0.07,-1.605,0.645,-1.984l2.628,-1.394c0.409,-0.217,0.694,-0.61,0.774,-1.066l0.514,-2.93c0.14,-0.797,0.886,-1.339,1.688,-1.226l2.946,0.417c0.458,0.065,0.921,-0.085,1.253,-0.407l2.138,-2.069 0,0zM13.957,1.009")!]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for checkForeground
        let position_x_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [1.16, 9, 9]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [1.41, 11, 11]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [1.61, 12.5, 12.5]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [1.09, 8.5, 8.5]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,0.577l0.515,0.513 1.095,-1.09")!, CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!, CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let linewidth_checkForeground: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "lineWidth"
            keyframeAnimation.values = [0.25, 3, 3]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1), .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.checkForeground.layer] = [linewidth_checkForeground, position_y_checkForeground, position_x_checkForeground, path_checkForeground, bounds_size_width_checkForeground, bounds_size_height_checkForeground]
        animationsByLayer[view.group.layer] = [position_y_group, position_x_group, opacity_group, bounds_size_width_group, bounds_size_height_group]
        animationsByLayer[view.poly.layer] = [path_poly, bounds_size_width_poly, bounds_size_height_poly, position_y_poly, transform_rotation_z_poly, position_x_poly]

        return animationsByLayer 
    }
}