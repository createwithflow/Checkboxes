// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class TracerView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1)
    }

    public var outerBackground: ShapeView!
    public var outer: ShapeView!
    public var check: ShapeView!
    public var x0: ShapeView!
    public var x1: ShapeView!

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
            createOuterBackground()
            createOuter()
            createCheck()
            createX0()
            createX1()
        }
    }

    private func createOuterBackground() {
        outerBackground = ShapeView(frame: CGRect(x: 4, y: 4, width: 24, height: 24))
        outerBackground.backgroundColor = UIColor.clear
        outerBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        outerBackground.alpha = 0.33
        outerBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        outerBackground.layer.borderColor = UIColor.clear.cgColor
        outerBackground.layer.shadowColor = UIColor.clear.cgColor
        outerBackground.layer.shadowOpacity = 1
        outerBackground.layer.position = CGPoint(x: 4, y: 4)
        outerBackground.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        outerBackground.layer.masksToBounds = false
        outerBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        outerBackground.shapeLayer.strokeColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        outerBackground.shapeLayer.fillColor = nil
        outerBackground.shapeLayer.miterLimit = 4
        outerBackground.shapeLayer.lineDashPattern = []
        outerBackground.shapeLayer.lineDashPhase = 0
        outerBackground.shapeLayer.lineWidth = 3
        outerBackground.shapeLayer.path = CGPathCreateWithSVGString("M12,24c6.6,0,12,-5.4,12,-12 0,-6.6,-5.4,-12,-12,-12 -6.6,0,-12,5.4,-12,12 0,6.6,5.4,12,12,12zM12,24")!

    }

    private func createOuter() {
        outer = ShapeView(frame: CGRect(x: 16, y: 16, width: 24, height: 24))
        outer.backgroundColor = UIColor.clear
        outer.transform = CGAffineTransform(rotationAngle: -0.211111 * CGFloat.pi)
        outer.layer.shadowOffset = CGSize(width: 0, height: 0)
        outer.layer.borderColor = UIColor.clear.cgColor
        outer.layer.shadowColor = UIColor.clear.cgColor
        outer.layer.shadowOpacity = 1
        outer.layer.position = CGPoint(x: 16, y: 16)
        outer.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        outer.layer.masksToBounds = false
        outer.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        outer.shapeLayer.strokeColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        outer.shapeLayer.fillColor = nil
        outer.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        outer.shapeLayer.miterLimit = 4
        outer.shapeLayer.lineDashPattern = []
        outer.shapeLayer.lineDashPhase = 0
        outer.shapeLayer.lineWidth = 3
        outer.shapeLayer.path = CGPathCreateWithSVGString("M24,12c0,-6.6,-5.4,-12,-12,-12 -6.6,0,-12,5.4,-12,12 0,6.6,5.4,12,12,12 6.6,0,12,-5.4,12,-12zM24,12")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 10.84, y: 9.16, width: 14.14, height: 10.7))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 10.84, y: 9.16)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 14.14, height: 10.7)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.strokeEnd = 0.75
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 3
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,7.276l3.428,3.424 10.712,-10.7")!

    }

    private func createX0() {
        x0 = ShapeView(frame: CGRect(x: 16.21, y: 16.63, width: 7.3, height: 7.3))
        x0.backgroundColor = UIColor.clear
        x0.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        x0.layer.shadowOffset = CGSize(width: 0, height: 0)
        x0.layer.borderColor = UIColor.clear.cgColor
        x0.layer.shadowColor = UIColor.clear.cgColor
        x0.layer.shadowOpacity = 1
        x0.layer.position = CGPoint(x: 16.21, y: 16.63)
        x0.layer.bounds = CGRect(x: 0, y: 0, width: 7.3, height: 7.3)
        x0.layer.masksToBounds = false
        x0.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        x0.shapeLayer.strokeColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        x0.shapeLayer.fillColor = nil
        x0.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        x0.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        x0.shapeLayer.strokeStart = 0.5
        x0.shapeLayer.strokeEnd = 0.5
        x0.shapeLayer.miterLimit = 4
        x0.shapeLayer.lineDashPattern = []
        x0.shapeLayer.lineDashPhase = 0
        x0.shapeLayer.lineWidth = 3
        x0.shapeLayer.path = CGPathCreateWithSVGString("M0,0l7.3,7.3")!

    }

    private func createX1() {
        x1 = ShapeView(frame: CGRect(x: 16.21, y: 16.63, width: 7.3, height: 7.3))
        x1.backgroundColor = UIColor.clear
        x1.transform = CGAffineTransform(rotationAngle: 0.25 * CGFloat.pi)
        x1.layer.shadowOffset = CGSize(width: 0, height: 0)
        x1.layer.borderColor = UIColor.clear.cgColor
        x1.layer.shadowColor = UIColor.clear.cgColor
        x1.layer.shadowOpacity = 1
        x1.layer.position = CGPoint(x: 16.21, y: 16.63)
        x1.layer.bounds = CGRect(x: 0, y: 0, width: 7.3, height: 7.3)
        x1.layer.masksToBounds = false
        x1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        x1.shapeLayer.strokeColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        x1.shapeLayer.fillColor = nil
        x1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        x1.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        x1.shapeLayer.strokeStart = 0.5
        x1.shapeLayer.strokeEnd = 0.5
        x1.shapeLayer.miterLimit = 4
        x1.shapeLayer.lineDashPattern = []
        x1.shapeLayer.lineDashPhase = 0
        x1.shapeLayer.lineWidth = 3
        x1.shapeLayer.path = CGPathCreateWithSVGString("M0,7.3l7.3,-7.3")!

    }

    private func addSubviews() {
        addSubview(outerBackground)
        addSubview(outer)
        addSubview(check)
        addSubview(x0)
        addSubview(x1)
    }
}
