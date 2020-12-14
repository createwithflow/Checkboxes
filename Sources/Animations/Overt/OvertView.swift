// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class OvertView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var background: ShapeView!
    public var cutout: ShapeView!
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
            createBackground()
            createCutout()
            createCheck()
        }
    }

    private func createBackground() {
        background = ShapeView(frame: CGRect(x: 2, y: 2, width: 28, height: 28))
        background.backgroundColor = UIColor.clear
        background.layer.anchorPoint = CGPoint(x: 0, y: 0)
        background.layer.shadowOffset = CGSize(width: 0, height: 0)
        background.layer.borderColor = UIColor.clear.cgColor
        background.layer.shadowColor = UIColor.clear.cgColor
        background.layer.shadowOpacity = 1
        background.layer.position = CGPoint(x: 2, y: 2)
        background.layer.bounds = CGRect(x: 0, y: 0, width: 28, height: 28)
        background.layer.masksToBounds = false
        background.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        background.shapeLayer.fillColor = UIColor(red: 0.573, green: 0.573, blue: 0.573, alpha: 1).cgColor
        background.shapeLayer.miterLimit = 4
        background.shapeLayer.lineDashPattern = []
        background.shapeLayer.lineDashPhase = 0
        background.shapeLayer.lineWidth = 1
        background.shapeLayer.path = CGPathCreateWithSVGString("M0,3c-0,-1.646,1.354,-3,3,-3l22,0c1.646,0,3,1.354,3,3l0,22c0,1.646,-1.354,3,-3,3l-22,0c-1.646,0,-3,-1.354,-3,-3l0,-22zM0,3")!

    }

    private func createCutout() {
        cutout = ShapeView(frame: CGRect(x: 4, y: 4, width: 24, height: 24))
        cutout.backgroundColor = UIColor.clear
        cutout.layer.anchorPoint = CGPoint(x: 0, y: 0)
        cutout.layer.shadowOffset = CGSize(width: 0, height: 0)
        cutout.layer.borderColor = UIColor.clear.cgColor
        cutout.layer.shadowColor = UIColor.clear.cgColor
        cutout.layer.shadowOpacity = 1
        cutout.layer.position = CGPoint(x: 4, y: 4)
        cutout.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        cutout.layer.masksToBounds = false
        cutout.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        cutout.shapeLayer.fillColor = UIColor.white.cgColor
        cutout.shapeLayer.miterLimit = 4
        cutout.shapeLayer.lineDashPattern = []
        cutout.shapeLayer.lineDashPhase = 0
        cutout.shapeLayer.lineWidth = 1
        cutout.shapeLayer.path = CGPathCreateWithSVGString("M0,1.5c-0,-0.823,0.677,-1.5,1.5,-1.5l21,0c0.823,0,1.5,0.677,1.5,1.5l0,21c0,0.823,-0.677,1.5,-1.5,1.5l-21,0c-0.823,0,-1.5,-0.677,-1.5,-1.5l0,-21zM0,1.5")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 7, y: 9, width: 19, height: 14))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.alpha = 0
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 7, y: 9)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 19, height: 14)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.fillColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 3
        check.shapeLayer.path = CGPathCreateWithSVGString("M18.462,0.535c0.718,0.713,0.718,1.869,0,2.582l-10.419,10.348c-0.718,0.713,-1.882,0.713,-2.6,0l-4.903,-4.87c-0.718,-0.713,-0.718,-1.869,0,-2.582 0.718,-0.713,1.882,-0.713,2.6,0l3.603,3.578 9.119,-9.057c0.718,-0.713,1.882,-0.713,2.6,0l0,0zM18.462,0.535")!

    }

    private func addSubviews() {
        addSubview(background)
        addSubview(cutout)
        addSubview(check)
    }
}
