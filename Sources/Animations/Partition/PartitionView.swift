// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class PartitionView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var borderLong: ShapeView!
    public var check: ShapeView!
    public var borderShort: ShapeView!

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
            createBorderLong()
            createCheck()
            createBorderShort()
        }
    }

    private func createBorderLong() {
        borderLong = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        borderLong.backgroundColor = UIColor.clear
        borderLong.layer.anchorPoint = CGPoint(x: 0, y: 0)
        borderLong.layer.shadowOffset = CGSize(width: 0, height: 0)
        borderLong.layer.borderColor = UIColor.clear.cgColor
        borderLong.layer.shadowColor = UIColor.clear.cgColor
        borderLong.layer.shadowOpacity = 1
        borderLong.layer.position = CGPoint(x: 3, y: 3)
        borderLong.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        borderLong.layer.masksToBounds = false
        borderLong.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        borderLong.shapeLayer.strokeColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor
        borderLong.shapeLayer.fillColor = nil
        borderLong.shapeLayer.strokeStart = 0.1
        borderLong.shapeLayer.strokeEnd = 0.9
        borderLong.shapeLayer.miterLimit = 4
        borderLong.shapeLayer.lineDashPattern = []
        borderLong.shapeLayer.lineDashPhase = 0
        borderLong.shapeLayer.lineWidth = 4
        borderLong.shapeLayer.path = CGPathCreateWithSVGString("M26,0l0,26 -26,0 0,-26 26,0zM26,0")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 9.09, y: 4.5, width: 18.41, height: 15))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 9.09, y: 4.5)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 18.41, height: 15)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "square")
        check.shapeLayer.strokeStart = 1
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 4
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,10.118l4.91,4.882 13.5,-15")!

    }

    private func createBorderShort() {
        borderShort = ShapeView(frame: CGRect(x: 18, y: 3, width: 11, height: 11))
        borderShort.backgroundColor = UIColor.clear
        borderShort.layer.anchorPoint = CGPoint(x: 0, y: 0)
        borderShort.layer.shadowOffset = CGSize(width: 0, height: 0)
        borderShort.layer.borderColor = UIColor.clear.cgColor
        borderShort.layer.shadowColor = UIColor.clear.cgColor
        borderShort.layer.shadowOpacity = 1
        borderShort.layer.position = CGPoint(x: 18, y: 3)
        borderShort.layer.bounds = CGRect(x: 0, y: 0, width: 11, height: 11)
        borderShort.layer.masksToBounds = false
        borderShort.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        borderShort.shapeLayer.strokeColor = UIColor(red: 0.004, green: 0.086, blue: 0.541, alpha: 1).cgColor
        borderShort.shapeLayer.fillColor = nil
        borderShort.shapeLayer.miterLimit = 4
        borderShort.shapeLayer.lineDashPattern = []
        borderShort.shapeLayer.lineDashPhase = 0
        borderShort.shapeLayer.lineWidth = 4
        borderShort.shapeLayer.path = CGPathCreateWithSVGString("M0,0l11,0 0,11")!

    }

    private func addSubviews() {
        addSubview(borderLong)
        addSubview(check)
        addSubview(borderShort)
    }
}
