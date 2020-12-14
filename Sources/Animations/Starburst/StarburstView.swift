// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class StarburstView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var star: ShapeView!
    public var circle: ShapeView!
    public var burst: UIView!
    public var d0: ShapeView!
    public var d1: ShapeView!
    public var d2: ShapeView!
    public var d3: ShapeView!
    public var d4: ShapeView!
    public var d5: ShapeView!
    public var d6: ShapeView!
    public var d7: ShapeView!

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
            createStar()
            createCircle()
            createBurst()
            createD0()
            createD1()
            createD2()
            createD3()
            createD4()
            createD5()
            createD6()
            createD7()
        }
    }

    private func createStar() {
        star = ShapeView(frame: CGRect(x: 3.06, y: 3.44, width: 25.89, height: 24.72))
        star.backgroundColor = UIColor.clear
        star.layer.anchorPoint = CGPoint(x: 0, y: 0)
        star.layer.shadowOffset = CGSize(width: 0, height: 0)
        star.layer.borderColor = UIColor.clear.cgColor
        star.layer.shadowColor = UIColor.clear.cgColor
        star.layer.shadowOpacity = 1
        star.layer.position = CGPoint(x: 3.06, y: 3.44)
        star.layer.bounds = CGRect(x: 0, y: 0, width: 25.89, height: 24.72)
        star.layer.masksToBounds = false
        star.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        star.shapeLayer.fillColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor
        star.shapeLayer.miterLimit = 4
        star.shapeLayer.lineDashPattern = []
        star.shapeLayer.lineDashPhase = 0
        star.shapeLayer.lineWidth = 1
        star.shapeLayer.path = CGPathCreateWithSVGString("M12.033,0.591c0.353,-0.787,1.471,-0.787,1.825,0l3.015,6.716c0.145,0.324,0.452,0.547,0.805,0.585l7.319,0.791c0.858,0.093,1.204,1.156,0.564,1.735l-5.456,4.942c-0.263,0.238,-0.38,0.599,-0.307,0.946l1.509,7.206c0.177,0.845,-0.728,1.502,-1.476,1.073l-6.387,-3.662c-0.308,-0.177,-0.687,-0.177,-0.995,0l-6.387,3.662c-0.749,0.429,-1.653,-0.228,-1.476,-1.073l1.509,-7.206c0.073,-0.348,-0.044,-0.708,-0.307,-0.946l-5.456,-4.942c-0.64,-0.579,-0.294,-1.643,0.564,-1.735l7.319,-0.791c0.353,-0.038,0.659,-0.261,0.805,-0.585l3.015,-6.716 0,0zM12.033,0.591")!

    }

    private func createCircle() {
        circle = ShapeView(frame: CGRect(x: 15.04, y: 15.04, width: 1.93, height: 1.93))
        circle.backgroundColor = UIColor.clear
        circle.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circle.alpha = 0
        circle.layer.shadowOffset = CGSize(width: 0, height: 0)
        circle.layer.borderColor = UIColor.clear.cgColor
        circle.layer.shadowColor = UIColor.clear.cgColor
        circle.layer.shadowOpacity = 1
        circle.layer.position = CGPoint(x: 15.04, y: 15.04)
        circle.layer.bounds = CGRect(x: 0, y: 0, width: 1.93, height: 1.93)
        circle.layer.masksToBounds = false
        circle.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circle.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        circle.shapeLayer.fillColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 0).cgColor
        circle.shapeLayer.miterLimit = 4
        circle.shapeLayer.lineDashPattern = []
        circle.shapeLayer.lineDashPhase = 0
        circle.shapeLayer.lineWidth = 5
        circle.shapeLayer.path = CGPathCreateWithSVGString("M0.965,1.93c0.531,0,0.965,-0.434,0.965,-0.965 0,-0.531,-0.434,-0.965,-0.965,-0.965 -0.531,0,-0.965,0.434,-0.965,0.965 0,0.531,0.434,0.965,0.965,0.965zM0.965,1.93")!

    }

    private func createBurst() {
        burst = UIView(frame: CGRect(x: 16, y: 17, width: 42, height: 0.02))
        burst.backgroundColor = UIColor.clear
        burst.alpha = 0
        burst.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst.layer.shadowColor = UIColor.clear.cgColor
        burst.layer.shadowOpacity = 1
        burst.layer.position = CGPoint(x: 16, y: 17)
        burst.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.02)
        burst.layer.masksToBounds = false
    }

    private func createD0() {
        d0 = ShapeView(frame: CGRect(x: 0, y: 0.01, width: 42, height: 0.01))
        d0.backgroundColor = UIColor.clear
        d0.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d0.layer.shadowOffset = CGSize(width: 0, height: 0)
        d0.layer.borderColor = UIColor.clear.cgColor
        d0.layer.shadowColor = UIColor.clear.cgColor
        d0.layer.shadowOpacity = 1
        d0.layer.position = CGPoint(x: 0, y: 0.01)
        d0.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d0.layer.masksToBounds = false
        d0.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d0.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d0.shapeLayer.fillColor = nil
        d0.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d0.shapeLayer.strokeStart = 0.88
        d0.shapeLayer.miterLimit = 4
        d0.shapeLayer.lineDashPattern = []
        d0.shapeLayer.lineDashPhase = 0
        d0.shapeLayer.lineWidth = 3
        d0.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func createD1() {
        d1 = ShapeView(frame: CGRect(x: 21, y: 0.01, width: 42, height: 0.01))
        d1.backgroundColor = UIColor.clear
        d1.transform = CGAffineTransform(rotationAngle: 0.25 * CGFloat.pi)
        d1.layer.shadowOffset = CGSize(width: 0, height: 0)
        d1.layer.borderColor = UIColor.clear.cgColor
        d1.layer.shadowColor = UIColor.clear.cgColor
        d1.layer.shadowOpacity = 1
        d1.layer.position = CGPoint(x: 21, y: 0.01)
        d1.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d1.layer.masksToBounds = false
        d1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d1.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d1.shapeLayer.fillColor = nil
        d1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d1.shapeLayer.strokeStart = 0.88
        d1.shapeLayer.miterLimit = 4
        d1.shapeLayer.lineDashPattern = []
        d1.shapeLayer.lineDashPhase = 0
        d1.shapeLayer.lineWidth = 3
        d1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func createD2() {
        d2 = ShapeView(frame: CGRect(x: 21, y: 0.01, width: 42, height: 0.01))
        d2.backgroundColor = UIColor.clear
        d2.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        d2.layer.shadowOffset = CGSize(width: 0, height: 0)
        d2.layer.borderColor = UIColor.clear.cgColor
        d2.layer.shadowColor = UIColor.clear.cgColor
        d2.layer.shadowOpacity = 1
        d2.layer.position = CGPoint(x: 21, y: 0.01)
        d2.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d2.layer.masksToBounds = false
        d2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d2.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d2.shapeLayer.fillColor = nil
        d2.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d2.shapeLayer.strokeStart = 0.88
        d2.shapeLayer.miterLimit = 4
        d2.shapeLayer.lineDashPattern = []
        d2.shapeLayer.lineDashPhase = 0
        d2.shapeLayer.lineWidth = 3
        d2.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func createD3() {
        d3 = ShapeView(frame: CGRect(x: 21, y: 0.01, width: 42, height: 0.01))
        d3.backgroundColor = UIColor.clear
        d3.transform = CGAffineTransform(rotationAngle: 0.75 * CGFloat.pi)
        d3.layer.shadowOffset = CGSize(width: 0, height: 0)
        d3.layer.borderColor = UIColor.clear.cgColor
        d3.layer.shadowColor = UIColor.clear.cgColor
        d3.layer.shadowOpacity = 1
        d3.layer.position = CGPoint(x: 21, y: 0.01)
        d3.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d3.layer.masksToBounds = false
        d3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d3.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d3.shapeLayer.fillColor = nil
        d3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d3.shapeLayer.strokeStart = 0.88
        d3.shapeLayer.miterLimit = 4
        d3.shapeLayer.lineDashPattern = []
        d3.shapeLayer.lineDashPhase = 0
        d3.shapeLayer.lineWidth = 3
        d3.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func createD4() {
        d4 = ShapeView(frame: CGRect(x: 21, y: 0.01, width: 42, height: 0.01))
        d4.backgroundColor = UIColor.clear
        d4.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        d4.layer.shadowOffset = CGSize(width: 0, height: 0)
        d4.layer.borderColor = UIColor.clear.cgColor
        d4.layer.shadowColor = UIColor.clear.cgColor
        d4.layer.shadowOpacity = 1
        d4.layer.position = CGPoint(x: 21, y: 0.01)
        d4.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d4.layer.masksToBounds = false
        d4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d4.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d4.shapeLayer.fillColor = nil
        d4.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d4.shapeLayer.strokeStart = 0.88
        d4.shapeLayer.miterLimit = 4
        d4.shapeLayer.lineDashPattern = []
        d4.shapeLayer.lineDashPhase = 0
        d4.shapeLayer.lineWidth = 3
        d4.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func createD5() {
        d5 = ShapeView(frame: CGRect(x: 21, y: 0.01, width: 42, height: 0.01))
        d5.backgroundColor = UIColor.clear
        d5.transform = CGAffineTransform(rotationAngle: 1.25 * CGFloat.pi)
        d5.layer.shadowOffset = CGSize(width: 0, height: 0)
        d5.layer.borderColor = UIColor.clear.cgColor
        d5.layer.shadowColor = UIColor.clear.cgColor
        d5.layer.shadowOpacity = 1
        d5.layer.position = CGPoint(x: 21, y: 0.01)
        d5.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d5.layer.masksToBounds = false
        d5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d5.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d5.shapeLayer.fillColor = nil
        d5.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d5.shapeLayer.strokeStart = 0.88
        d5.shapeLayer.miterLimit = 4
        d5.shapeLayer.lineDashPattern = []
        d5.shapeLayer.lineDashPhase = 0
        d5.shapeLayer.lineWidth = 3
        d5.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func createD6() {
        d6 = ShapeView(frame: CGRect(x: 21, y: 0.01, width: 42, height: 0.01))
        d6.backgroundColor = UIColor.clear
        d6.transform = CGAffineTransform(rotationAngle: 1.5 * CGFloat.pi)
        d6.layer.shadowOffset = CGSize(width: 0, height: 0)
        d6.layer.borderColor = UIColor.clear.cgColor
        d6.layer.shadowColor = UIColor.clear.cgColor
        d6.layer.shadowOpacity = 1
        d6.layer.position = CGPoint(x: 21, y: 0.01)
        d6.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d6.layer.masksToBounds = false
        d6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d6.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d6.shapeLayer.fillColor = nil
        d6.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d6.shapeLayer.strokeStart = 0.88
        d6.shapeLayer.miterLimit = 4
        d6.shapeLayer.lineDashPattern = []
        d6.shapeLayer.lineDashPhase = 0
        d6.shapeLayer.lineWidth = 3
        d6.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func createD7() {
        d7 = ShapeView(frame: CGRect(x: 21, y: 0.01, width: 42, height: 0.01))
        d7.backgroundColor = UIColor.clear
        d7.transform = CGAffineTransform(rotationAngle: 1.75 * CGFloat.pi)
        d7.layer.shadowOffset = CGSize(width: 0, height: 0)
        d7.layer.borderColor = UIColor.clear.cgColor
        d7.layer.shadowColor = UIColor.clear.cgColor
        d7.layer.shadowOpacity = 1
        d7.layer.position = CGPoint(x: 21, y: 0.01)
        d7.layer.bounds = CGRect(x: 0, y: 0, width: 42, height: 0.01)
        d7.layer.masksToBounds = false
        d7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d7.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        d7.shapeLayer.fillColor = nil
        d7.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        d7.shapeLayer.strokeStart = 0.88
        d7.shapeLayer.miterLimit = 4
        d7.shapeLayer.lineDashPattern = []
        d7.shapeLayer.lineDashPhase = 0
        d7.shapeLayer.lineWidth = 3
        d7.shapeLayer.path = CGPathCreateWithSVGString("M0,0.005l42,0")!

    }

    private func addSubviews() {
        burst.addSubview(d0)
        burst.addSubview(d1)
        burst.addSubview(d2)
        burst.addSubview(d3)
        burst.addSubview(d4)
        burst.addSubview(d5)
        burst.addSubview(d6)
        burst.addSubview(d7)
        addSubview(star)
        addSubview(circle)
        addSubview(burst)
    }
}
