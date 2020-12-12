// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class AffirmView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var polyBackground: ShapeView!
    public var group: UIView!
    public var poly: ShapeView!
    public var checkForeground: ShapeView!

    public override var intrinsicContentSize: CGSize {
        return Defaults.size
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = Defaults.backgroundColor
        clipsToBounds = false
        createViews()
        addSubviews()
        //scale(to: frame.size)
    }

    /// Scales `self` and its subviews to `size`.
    ///
    /// - Parameter size: The size `self` is scaled to.
    ///
    /// UIKit specifies: "In iOS 8.0 and later, the transform property does not affect Auto Layout. Auto layout
    /// calculates a view's alignment rectangle based on its untransformed frame."
    ///
    /// see: https://developer.apple.com/documentation/uikit/uiview/1622459-transform
    ///
    /// If there are any constraints in IB affecting the frame of `self`, this method will have consequences on
    /// layout / rendering. To properly scale an animation, you will have to position the view manually.
    public func scale(to size: CGSize) {
        let x = size.width / Defaults.size.width
        let y = size.height / Defaults.size.height
        transform = CGAffineTransform(scaleX: x, y: y)
    }

    private func createViews() {
        CATransaction.suppressAnimations {
            createPolyBackground()
            createGroup()
            createPoly()
            createCheckForeground()
        }
    }

    private func createPolyBackground() {
        polyBackground = ShapeView(frame: CGRect(x: 1, y: 1, width: 30, height: 30))
        polyBackground.backgroundColor = UIColor.clear
        polyBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        polyBackground.alpha = 0.2
        polyBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        polyBackground.layer.borderColor = UIColor.clear.cgColor
        polyBackground.layer.shadowColor = UIColor.clear.cgColor
        polyBackground.layer.shadowOpacity = 1
        polyBackground.layer.position = CGPoint(x: 1, y: 1)
        polyBackground.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)
        polyBackground.layer.masksToBounds = false
        polyBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        polyBackground.shapeLayer.fillColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        polyBackground.shapeLayer.miterLimit = 4
        polyBackground.shapeLayer.lineDashPattern = []
        polyBackground.shapeLayer.lineDashPhase = 0
        polyBackground.shapeLayer.lineWidth = 1
        polyBackground.shapeLayer.path = CGPathCreateWithSVGString("M13.957,1.009c0.581,-0.563,1.504,-0.563,2.086,0l2.138,2.069c0.332,0.322,0.795,0.472,1.253,0.407l2.946,-0.417c0.801,-0.113,1.548,0.429,1.688,1.226l0.514,2.93c0.08,0.456,0.366,0.849,0.774,1.066l2.628,1.394c0.715,0.379,1,1.257,0.645,1.984l-1.307,2.673c-0.203,0.416,-0.203,0.902,0,1.318l1.307,2.673c0.355,0.727,0.07,1.605,-0.645,1.984l-2.628,1.394c-0.409,0.217,-0.694,0.61,-0.774,1.066l-0.514,2.93c-0.14,0.797,-0.886,1.339,-1.688,1.226l-2.946,-0.417c-0.458,-0.065,-0.921,0.085,-1.253,0.407l-2.138,2.069c-0.581,0.562,-1.504,0.562,-2.086,0l-2.138,-2.069c-0.332,-0.322,-0.795,-0.472,-1.253,-0.407l-2.946,0.417c-0.801,0.113,-1.548,-0.429,-1.688,-1.226l-0.514,-2.93c-0.08,-0.456,-0.366,-0.849,-0.774,-1.066l-2.628,-1.394c-0.715,-0.379,-1,-1.257,-0.645,-1.984l1.307,-2.673c0.203,-0.416,0.203,-0.902,0,-1.318l-1.307,-2.673c-0.355,-0.727,-0.07,-1.605,0.645,-1.984l2.628,-1.394c0.409,-0.217,0.694,-0.61,0.774,-1.066l0.514,-2.93c0.14,-0.797,0.886,-1.339,1.688,-1.226l2.946,0.417c0.458,0.065,0.921,-0.085,1.253,-0.407l2.138,-2.069 0,0zM13.957,1.009")!

    }

    private func createGroup() {
        group = UIView(frame: CGRect(x: 14.07, y: 14.07, width: 3.85, height: 3.85))
        group.backgroundColor = UIColor.clear
        group.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group.alpha = 0
        group.layer.shadowOffset = CGSize(width: 0, height: 0)
        group.layer.borderWidth = 1
        group.layer.borderColor = UIColor.clear.cgColor
        group.layer.shadowColor = UIColor.clear.cgColor
        group.layer.shadowOpacity = 1
        group.layer.position = CGPoint(x: 14.07, y: 14.07)
        group.layer.bounds = CGRect(x: 0, y: 0, width: 3.85, height: 3.85)
        group.layer.masksToBounds = false
    }

    private func createPoly() {
        poly = ShapeView(frame: CGRect(x: 1.93, y: 1.93, width: 3.85, height: 3.85))
        poly.backgroundColor = UIColor.clear
        poly.layer.shadowOffset = CGSize(width: 0, height: 0)
        poly.layer.borderColor = UIColor.clear.cgColor
        poly.layer.shadowColor = UIColor.clear.cgColor
        poly.layer.shadowOpacity = 1
        poly.layer.position = CGPoint(x: 1.93, y: 1.93)
        poly.layer.bounds = CGRect(x: 0, y: 0, width: 3.85, height: 3.85)
        poly.layer.masksToBounds = false
        poly.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        poly.shapeLayer.fillColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        poly.shapeLayer.miterLimit = 4
        poly.shapeLayer.lineDashPattern = []
        poly.shapeLayer.lineDashPhase = 0
        poly.shapeLayer.lineWidth = 1
        poly.shapeLayer.path = CGPathCreateWithSVGString("M1.791,0.129c0.075,-0.072,0.193,-0.072,0.268,0l0.274,0.265c0.043,0.041,0.102,0.061,0.161,0.052l0.378,-0.053c0.103,-0.015,0.199,0.055,0.217,0.157l0.066,0.376c0.01,0.058,0.047,0.109,0.099,0.137l0.337,0.179c0.092,0.049,0.128,0.161,0.083,0.255l-0.168,0.343c-0.026,0.053,-0.026,0.116,0,0.169l0.168,0.343c0.046,0.093,0.009,0.206,-0.083,0.255l-0.337,0.179c-0.052,0.028,-0.089,0.078,-0.099,0.137l-0.066,0.376c-0.018,0.102,-0.114,0.172,-0.217,0.157l-0.378,-0.053c-0.059,-0.008,-0.118,0.011,-0.161,0.052l-0.274,0.265c-0.075,0.072,-0.193,0.072,-0.268,0l-0.274,-0.265c-0.043,-0.041,-0.102,-0.061,-0.161,-0.052l-0.378,0.053c-0.103,0.015,-0.199,-0.055,-0.217,-0.157l-0.066,-0.376c-0.01,-0.058,-0.047,-0.109,-0.099,-0.137l-0.337,-0.179c-0.092,-0.049,-0.128,-0.161,-0.083,-0.255l0.168,-0.343c0.026,-0.053,0.026,-0.116,0,-0.169l-0.168,-0.343c-0.046,-0.093,-0.009,-0.206,0.083,-0.255l0.337,-0.179c0.052,-0.028,0.089,-0.078,0.099,-0.137l0.066,-0.376c0.018,-0.102,0.114,-0.172,0.217,-0.157l0.378,0.053c0.059,0.008,0.118,-0.011,0.161,-0.052l0.274,-0.265 0,0zM1.791,0.129")!

    }

    private func createCheckForeground() {
        checkForeground = ShapeView(frame: CGRect(x: 1.16, y: 1.41, width: 1.61, height: 1.09))
        checkForeground.backgroundColor = UIColor.clear
        checkForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkForeground.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkForeground.layer.borderColor = UIColor.clear.cgColor
        checkForeground.layer.shadowColor = UIColor.clear.cgColor
        checkForeground.layer.shadowOpacity = 1
        checkForeground.layer.position = CGPoint(x: 1.16, y: 1.41)
        checkForeground.layer.bounds = CGRect(x: 0, y: 0, width: 1.61, height: 1.09)
        checkForeground.layer.masksToBounds = false
        checkForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkForeground.shapeLayer.strokeColor = UIColor.white.cgColor
        checkForeground.shapeLayer.fillColor = nil
        checkForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkForeground.shapeLayer.miterLimit = 4
        checkForeground.shapeLayer.lineDashPattern = []
        checkForeground.shapeLayer.lineDashPhase = 0
        checkForeground.shapeLayer.lineWidth = 0.25
        checkForeground.shapeLayer.path = CGPathCreateWithSVGString("M0,0.577l0.515,0.513 1.095,-1.09")!

    }

    private func addSubviews() {
        group.addSubview(poly)
        group.addSubview(checkForeground)
        addSubview(polyBackground)
        addSubview(group)
    }
}
