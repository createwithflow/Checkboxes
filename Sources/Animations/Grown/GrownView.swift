// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class GrownView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1)
    }

    public var circleBackground: ShapeView!
    public var foreground: UIView!
    public var circleForeground: ShapeView!
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
            createCircleBackground()
            createForeground()
            createCircleForeground()
            createCheckForeground()
        }
    }

    private func createCircleBackground() {
        circleBackground = ShapeView(frame: CGRect(x: 29, y: 3, width: 26, height: 26))
        circleBackground.backgroundColor = UIColor.clear
        circleBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleBackground.alpha = 0.33
        circleBackground.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        circleBackground.transform = circleBackground.transform.scaledBy(x: 1, y: -1)
        circleBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleBackground.layer.borderColor = UIColor.clear.cgColor
        circleBackground.layer.shadowColor = UIColor.clear.cgColor
        circleBackground.layer.shadowOpacity = 1
        circleBackground.layer.position = CGPoint(x: 29, y: 3)
        circleBackground.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        circleBackground.layer.masksToBounds = false
        circleBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circleBackground.shapeLayer.fillColor = UIColor.white.cgColor
        circleBackground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleBackground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleBackground.shapeLayer.miterLimit = 4
        circleBackground.shapeLayer.lineDashPattern = []
        circleBackground.shapeLayer.lineDashPhase = 0
        circleBackground.shapeLayer.lineWidth = 0
        circleBackground.shapeLayer.path = CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!

    }

    private func createForeground() {
        foreground = UIView(frame: CGRect(x: 15, y: 15, width: 2, height: 2))
        foreground.backgroundColor = UIColor.clear
        foreground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        foreground.alpha = 0
        foreground.layer.shadowOffset = CGSize(width: 0, height: 0)
        foreground.layer.borderWidth = 1
        foreground.layer.borderColor = UIColor.clear.cgColor
        foreground.layer.shadowColor = UIColor.clear.cgColor
        foreground.layer.shadowOpacity = 1
        foreground.layer.position = CGPoint(x: 15, y: 15)
        foreground.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        foreground.layer.masksToBounds = false
    }

    private func createCircleForeground() {
        circleForeground = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        circleForeground.backgroundColor = UIColor.clear
        circleForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleForeground.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleForeground.layer.borderColor = UIColor.clear.cgColor
        circleForeground.layer.shadowColor = UIColor.clear.cgColor
        circleForeground.layer.shadowOpacity = 1
        circleForeground.layer.position = CGPoint(x: 0, y: 0)
        circleForeground.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        circleForeground.layer.masksToBounds = false
        circleForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circleForeground.shapeLayer.fillColor = UIColor.white.cgColor
        circleForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleForeground.shapeLayer.miterLimit = 4
        circleForeground.shapeLayer.lineDashPattern = []
        circleForeground.shapeLayer.lineDashPhase = 0
        circleForeground.shapeLayer.lineWidth = 0.25
        circleForeground.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createCheckForeground() {
        checkForeground = ShapeView(frame: CGRect(x: 0.54, y: 0.69, width: 0.96, height: 0.65))
        checkForeground.backgroundColor = UIColor.clear
        checkForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkForeground.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkForeground.layer.borderColor = UIColor.clear.cgColor
        checkForeground.layer.shadowColor = UIColor.clear.cgColor
        checkForeground.layer.shadowOpacity = 1
        checkForeground.layer.position = CGPoint(x: 0.54, y: 0.69)
        checkForeground.layer.bounds = CGRect(x: 0, y: 0, width: 0.96, height: 0.65)
        checkForeground.layer.masksToBounds = false
        checkForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkForeground.shapeLayer.strokeColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor
        checkForeground.shapeLayer.fillColor = nil
        checkForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkForeground.shapeLayer.strokeStart = 0.32
        checkForeground.shapeLayer.strokeEnd = 0.32
        checkForeground.shapeLayer.miterLimit = 4
        checkForeground.shapeLayer.lineDashPattern = []
        checkForeground.shapeLayer.lineDashPhase = 0
        checkForeground.shapeLayer.lineWidth = 0.25
        checkForeground.shapeLayer.path = CGPathCreateWithSVGString("M0,0.344l0.307,0.306 0.653,-0.65")!

    }

    private func addSubviews() {
        foreground.addSubview(circleForeground)
        foreground.addSubview(checkForeground)
        addSubview(circleBackground)
        addSubview(foreground)
    }
}
