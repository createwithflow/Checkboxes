// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class PinkieView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1)
    }

    public var circleBackground: ShapeView!
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
            createCircleForeground()
            createCheckForeground()
        }
    }

    private func createCircleBackground() {
        circleBackground = ShapeView(frame: CGRect(x: 16, y: 16, width: 1, height: 1))
        circleBackground.backgroundColor = UIColor.clear
        circleBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleBackground.alpha = 0
        circleBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleBackground.layer.borderColor = UIColor.clear.cgColor
        circleBackground.layer.shadowColor = UIColor.clear.cgColor
        circleBackground.layer.shadowOpacity = 1
        circleBackground.layer.position = CGPoint(x: 16, y: 16)
        circleBackground.layer.bounds = CGRect(x: 0, y: 0, width: 1, height: 1)
        circleBackground.layer.masksToBounds = false
        circleBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circleBackground.shapeLayer.strokeColor = UIColor.white.cgColor
        circleBackground.shapeLayer.fillColor = UIColor.white.cgColor
        circleBackground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleBackground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleBackground.shapeLayer.miterLimit = 4
        circleBackground.shapeLayer.lineDashPattern = []
        circleBackground.shapeLayer.lineDashPhase = 0
        circleBackground.shapeLayer.lineWidth = 0
        circleBackground.shapeLayer.path = CGPathCreateWithSVGString("M0.5,1c0.275,0,0.5,-0.225,0.5,-0.5 0,-0.275,-0.225,-0.5,-0.5,-0.5 -0.275,0,-0.5,0.225,-0.5,0.5 0,0.275,0.225,0.5,0.5,0.5zM0.5,1")!

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
        circleForeground.shapeLayer.strokeColor = UIColor.white.cgColor
        circleForeground.shapeLayer.fillColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 0).cgColor
        circleForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleForeground.shapeLayer.miterLimit = 4
        circleForeground.shapeLayer.lineDashPattern = []
        circleForeground.shapeLayer.lineDashPhase = 0
        circleForeground.shapeLayer.lineWidth = 3
        circleForeground.shapeLayer.path = CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!

    }

    private func createCheckForeground() {
        checkForeground = ShapeView(frame: CGRect(x: 13.34, y: 14.27, width: 5.83, height: 3.96))
        checkForeground.backgroundColor = UIColor.clear
        checkForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkForeground.alpha = 0
        checkForeground.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkForeground.layer.borderColor = UIColor.clear.cgColor
        checkForeground.layer.shadowColor = UIColor.clear.cgColor
        checkForeground.layer.shadowOpacity = 1
        checkForeground.layer.position = CGPoint(x: 13.34, y: 14.27)
        checkForeground.layer.bounds = CGRect(x: 0, y: 0, width: 5.83, height: 3.96)
        checkForeground.layer.masksToBounds = false
        checkForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkForeground.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        checkForeground.shapeLayer.fillColor = nil
        checkForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "square")
        checkForeground.shapeLayer.miterLimit = 4
        checkForeground.shapeLayer.lineDashPattern = []
        checkForeground.shapeLayer.lineDashPhase = 0
        checkForeground.shapeLayer.lineWidth = 3
        checkForeground.shapeLayer.path = CGPathCreateWithSVGString("M0,2.096l1.866,1.864 3.964,-3.96")!

    }

    private func addSubviews() {
        addSubview(circleBackground)
        addSubview(circleForeground)
        addSubview(checkForeground)
    }
}
