// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class SimpletonView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var circleBackground: ShapeView!
    public var checkBackground: ShapeView!
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
            createCheckBackground()
            createCircleForeground()
            createCheckForeground()
        }
    }

    private func createCircleBackground() {
        circleBackground = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        circleBackground.backgroundColor = UIColor.clear
        circleBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleBackground.layer.borderColor = UIColor.clear.cgColor
        circleBackground.layer.shadowColor = UIColor.clear.cgColor
        circleBackground.layer.shadowOpacity = 1
        circleBackground.layer.position = CGPoint(x: 3, y: 3)
        circleBackground.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        circleBackground.layer.masksToBounds = false
        circleBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circleBackground.shapeLayer.strokeColor = UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor
        circleBackground.shapeLayer.fillColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 0).cgColor
        circleBackground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleBackground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleBackground.shapeLayer.miterLimit = 4
        circleBackground.shapeLayer.lineDashPattern = []
        circleBackground.shapeLayer.lineDashPhase = 0
        circleBackground.shapeLayer.lineWidth = 3
        circleBackground.shapeLayer.path = CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!

    }

    private func createCheckBackground() {
        checkBackground = ShapeView(frame: CGRect(x: 10, y: 12, width: 12.5, height: 8.5))
        checkBackground.backgroundColor = UIColor.clear
        checkBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkBackground.layer.borderColor = UIColor.clear.cgColor
        checkBackground.layer.shadowColor = UIColor.clear.cgColor
        checkBackground.layer.shadowOpacity = 1
        checkBackground.layer.position = CGPoint(x: 10, y: 12)
        checkBackground.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 8.5)
        checkBackground.layer.masksToBounds = false
        checkBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkBackground.shapeLayer.strokeColor = UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor
        checkBackground.shapeLayer.fillColor = nil
        checkBackground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkBackground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkBackground.shapeLayer.miterLimit = 4
        checkBackground.shapeLayer.lineDashPattern = []
        checkBackground.shapeLayer.lineDashPhase = 0
        checkBackground.shapeLayer.lineWidth = 3
        checkBackground.shapeLayer.path = CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!

    }

    private func createCircleForeground() {
        circleForeground = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        circleForeground.backgroundColor = UIColor.clear
        circleForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleForeground.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleForeground.layer.borderColor = UIColor.clear.cgColor
        circleForeground.layer.shadowColor = UIColor.clear.cgColor
        circleForeground.layer.shadowOpacity = 1
        circleForeground.layer.position = CGPoint(x: 3, y: 3)
        circleForeground.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        circleForeground.layer.masksToBounds = false
        circleForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circleForeground.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        circleForeground.shapeLayer.fillColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 0).cgColor
        circleForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleForeground.shapeLayer.strokeEnd = 0
        circleForeground.shapeLayer.miterLimit = 4
        circleForeground.shapeLayer.lineDashPattern = []
        circleForeground.shapeLayer.lineDashPhase = 0
        circleForeground.shapeLayer.lineWidth = 3
        circleForeground.shapeLayer.path = CGPathCreateWithSVGString("M13,0c7.15,0,13,5.85,13,13 0,7.15,-5.85,13,-13,13 -7.15,0,-13,-5.85,-13,-13 0,-7.15,5.85,-13,13,-13zM13,0")!

    }

    private func createCheckForeground() {
        checkForeground = ShapeView(frame: CGRect(x: 10, y: 12, width: 12.5, height: 8.5))
        checkForeground.backgroundColor = UIColor.clear
        checkForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkForeground.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkForeground.layer.borderColor = UIColor.clear.cgColor
        checkForeground.layer.shadowColor = UIColor.clear.cgColor
        checkForeground.layer.shadowOpacity = 1
        checkForeground.layer.position = CGPoint(x: 10, y: 12)
        checkForeground.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 8.5)
        checkForeground.layer.masksToBounds = false
        checkForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkForeground.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        checkForeground.shapeLayer.fillColor = nil
        checkForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkForeground.shapeLayer.strokeEnd = 0
        checkForeground.shapeLayer.miterLimit = 4
        checkForeground.shapeLayer.lineDashPattern = []
        checkForeground.shapeLayer.lineDashPhase = 0
        checkForeground.shapeLayer.lineWidth = 3
        checkForeground.shapeLayer.path = CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!

    }

    private func addSubviews() {
        addSubview(circleBackground)
        addSubview(checkBackground)
        addSubview(circleForeground)
        addSubview(checkForeground)
    }
}
