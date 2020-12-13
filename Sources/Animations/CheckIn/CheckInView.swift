// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class CheckInView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var outerBackground: ShapeView!
    public var inner: ShapeView!
    public var outer: ShapeView!
    public var check: ShapeView!

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
            createInner()
            createOuter()
            createCheck()
        }
    }

    private func createOuterBackground() {
        outerBackground = ShapeView(frame: CGRect(x: 2, y: 2, width: 28, height: 28))
        outerBackground.backgroundColor = UIColor.clear
        outerBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        outerBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        outerBackground.layer.borderColor = UIColor.clear.cgColor
        outerBackground.layer.shadowColor = UIColor.clear.cgColor
        outerBackground.layer.shadowOpacity = 1
        outerBackground.layer.position = CGPoint(x: 2, y: 2)
        outerBackground.layer.bounds = CGRect(x: 0, y: 0, width: 28, height: 28)
        outerBackground.layer.masksToBounds = false
        outerBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        outerBackground.shapeLayer.strokeColor = UIColor(red: 0.89, green: 0.894, blue: 0.898, alpha: 1).cgColor
        outerBackground.shapeLayer.fillColor = nil
        outerBackground.shapeLayer.miterLimit = 4
        outerBackground.shapeLayer.lineDashPattern = []
        outerBackground.shapeLayer.lineDashPhase = 0
        outerBackground.shapeLayer.lineWidth = 2
        outerBackground.shapeLayer.path = CGPathCreateWithSVGString("M14,28c7.7,0,14,-6.3,14,-14 0,-7.7,-6.3,-14,-14,-14 -7.7,0,-14,6.3,-14,14 0,7.7,6.3,14,14,14zM14,28")!

    }

    private func createInner() {
        inner = ShapeView(frame: CGRect(x: -18.02, y: -18.02, width: 68.03, height: 68.03))
        inner.backgroundColor = UIColor.clear
        inner.layer.anchorPoint = CGPoint(x: 0, y: 0)
        inner.alpha = 0
        inner.layer.shadowOffset = CGSize(width: 0, height: 0)
        inner.layer.borderColor = UIColor.clear.cgColor
        inner.layer.shadowColor = UIColor.clear.cgColor
        inner.layer.shadowOpacity = 1
        inner.layer.position = CGPoint(x: -18.02, y: -18.02)
        inner.layer.bounds = CGRect(x: 0, y: 0, width: 68.03, height: 68.03)
        inner.layer.masksToBounds = false
        inner.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        inner.shapeLayer.fillColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        inner.shapeLayer.miterLimit = 4
        inner.shapeLayer.lineDashPattern = []
        inner.shapeLayer.lineDashPhase = 0
        inner.shapeLayer.lineWidth = 2
        inner.shapeLayer.path = CGPathCreateWithSVGString("M34.015,68.03c18.708,0,34.015,-15.307,34.015,-34.015 0,-18.708,-15.307,-34.015,-34.015,-34.015 -18.708,0,-34.015,15.307,-34.015,34.015 0,18.708,15.307,34.015,34.015,34.015zM34.015,68.03")!

    }

    private func createOuter() {
        outer = ShapeView(frame: CGRect(x: 2, y: 2, width: 28, height: 28))
        outer.backgroundColor = UIColor.clear
        outer.layer.anchorPoint = CGPoint(x: 0, y: 0)
        outer.layer.shadowOffset = CGSize(width: 0, height: 0)
        outer.layer.borderColor = UIColor.clear.cgColor
        outer.layer.shadowColor = UIColor.clear.cgColor
        outer.layer.shadowOpacity = 1
        outer.layer.position = CGPoint(x: 2, y: 2)
        outer.layer.bounds = CGRect(x: 0, y: 0, width: 28, height: 28)
        outer.layer.masksToBounds = false
        outer.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        outer.shapeLayer.strokeColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor
        outer.shapeLayer.fillColor = nil
        outer.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        outer.shapeLayer.strokeEnd = 0
        outer.shapeLayer.miterLimit = 4
        outer.shapeLayer.lineDashPattern = []
        outer.shapeLayer.lineDashPhase = 0
        outer.shapeLayer.lineWidth = 2
        outer.shapeLayer.path = CGPathCreateWithSVGString("M28,14c0,-7.7,-6.3,-14,-14,-14 -7.7,0,-14,6.3,-14,14 0,7.7,6.3,14,14,14 7.7,0,14,-6.3,14,-14zM28,14")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 10, y: 12, width: 12.5, height: 8.5))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 10, y: 12)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 8.5)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.strokeEnd = 0
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 3
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!

    }

    private func addSubviews() {
        addSubview(outerBackground)
        addSubview(inner)
        addSubview(outer)
        addSubview(check)
    }
}
