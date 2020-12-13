// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class DashingView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1)
    }

    public var colorCircle: ShapeView!
    public var overlay: ShapeView!
    public var check: ShapeView!
    public var dash1: ShapeView!
    public var dash2: ShapeView!

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
            createColorCircle()
            createOverlay()
            createCheck()
            createDash1()
            createDash2()
        }
    }

    private func createColorCircle() {
        colorCircle = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        colorCircle.backgroundColor = UIColor.clear
        colorCircle.layer.anchorPoint = CGPoint(x: 0, y: 0)
        colorCircle.layer.shadowOffset = CGSize(width: 0, height: 0)
        colorCircle.layer.borderColor = UIColor.clear.cgColor
        colorCircle.layer.shadowColor = UIColor.clear.cgColor
        colorCircle.layer.shadowOpacity = 1
        colorCircle.layer.position = CGPoint(x: 3, y: 3)
        colorCircle.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        colorCircle.layer.masksToBounds = false
        colorCircle.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        colorCircle.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        colorCircle.shapeLayer.miterLimit = 4
        colorCircle.shapeLayer.lineDashPattern = []
        colorCircle.shapeLayer.lineDashPhase = 0
        colorCircle.shapeLayer.lineWidth = 1
        colorCircle.shapeLayer.path = CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!

    }

    private func createOverlay() {
        overlay = ShapeView(frame: CGRect(x: 2, y: 2, width: 28, height: 28))
        overlay.backgroundColor = UIColor.clear
        overlay.layer.anchorPoint = CGPoint(x: 0, y: 0)
        overlay.layer.shadowOffset = CGSize(width: 0, height: 0)
        overlay.layer.borderColor = UIColor.clear.cgColor
        overlay.layer.shadowColor = UIColor.clear.cgColor
        overlay.layer.shadowOpacity = 1
        overlay.layer.position = CGPoint(x: 2, y: 2)
        overlay.layer.bounds = CGRect(x: 0, y: 0, width: 28, height: 28)
        overlay.layer.masksToBounds = false
        overlay.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        overlay.shapeLayer.fillColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        overlay.shapeLayer.miterLimit = 4
        overlay.shapeLayer.lineDashPattern = []
        overlay.shapeLayer.lineDashPhase = 0
        overlay.shapeLayer.lineWidth = 1
        overlay.shapeLayer.path = CGPathCreateWithSVGString("M14,28c7.7,0,14,-6.3,14,-14 0,-7.7,-6.3,-14,-14,-14 -7.7,0,-14,6.3,-14,14 0,7.7,6.3,14,14,14zM14,28")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 9.75, y: 11.75, width: 12.5, height: 8.5))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 9.75, y: 11.75)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 8.5)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor.white.cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 0
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!

    }

    private func createDash1() {
        dash1 = ShapeView(frame: CGRect(x: 16, y: 16, width: 24, height: 24))
        dash1.backgroundColor = UIColor.clear
        dash1.transform = CGAffineTransform(rotationAngle: 0.0388889 * CGFloat.pi)
        dash1.layer.shadowOffset = CGSize(width: 0, height: 0)
        dash1.layer.borderColor = UIColor.clear.cgColor
        dash1.layer.shadowColor = UIColor.clear.cgColor
        dash1.layer.shadowOpacity = 1
        dash1.layer.position = CGPoint(x: 16, y: 16)
        dash1.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        dash1.layer.masksToBounds = false
        dash1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        dash1.shapeLayer.strokeColor = UIColor.white.cgColor
        dash1.shapeLayer.fillColor = nil
        dash1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        dash1.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        dash1.shapeLayer.miterLimit = 4
        dash1.shapeLayer.lineDashPattern = [4, 5.25]
        dash1.shapeLayer.lineDashPhase = 0
        dash1.shapeLayer.lineWidth = 2
        dash1.shapeLayer.path = CGPathCreateWithSVGString("M12,24c6.6,0,12,-5.4,12,-12 0,-6.6,-5.4,-12,-12,-12 -6.6,0,-12,5.4,-12,12 0,6.6,5.4,12,12,12zM12,24")!

    }

    private func createDash2() {
        dash2 = ShapeView(frame: CGRect(x: 16, y: 16, width: 24, height: 24))
        dash2.backgroundColor = UIColor.clear
        dash2.transform = CGAffineTransform(rotationAngle: 0.0388889 * CGFloat.pi)
        dash2.layer.shadowOffset = CGSize(width: 0, height: 0)
        dash2.layer.borderColor = UIColor.clear.cgColor
        dash2.layer.shadowColor = UIColor.clear.cgColor
        dash2.layer.shadowOpacity = 1
        dash2.layer.position = CGPoint(x: 16, y: 16)
        dash2.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        dash2.layer.masksToBounds = false
        dash2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        dash2.shapeLayer.strokeColor = UIColor.white.cgColor
        dash2.shapeLayer.fillColor = nil
        dash2.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        dash2.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        dash2.shapeLayer.miterLimit = 4
        dash2.shapeLayer.lineDashPattern = [4, 5.25]
        dash2.shapeLayer.lineDashPhase = 0
        dash2.shapeLayer.lineWidth = 2
        dash2.shapeLayer.path = CGPathCreateWithSVGString("M12,24c6.6,0,12,-5.4,12,-12 0,-6.6,-5.4,-12,-12,-12 -6.6,0,-12,5.4,-12,12 0,6.6,5.4,12,12,12zM12,24")!

    }

    private func addSubviews() {
        addSubview(colorCircle)
        addSubview(overlay)
        addSubview(check)
        addSubview(dash1)
        addSubview(dash2)
    }
}
