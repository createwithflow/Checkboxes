// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class WindmillView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var checkGroup: UIView!
    public var border: ShapeView!
    public var border_1: ShapeView!
    public var checkLeft: ShapeView!
    public var checkRight: ShapeView!

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
            createCheckGroup()
            createBorder()
            createBorder1()
            createCheckLeft()
            createCheckRight()
        }
    }

    private func createCheckGroup() {
        checkGroup = UIView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        checkGroup.backgroundColor = UIColor.clear
        checkGroup.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkGroup.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkGroup.layer.borderWidth = 1
        checkGroup.layer.borderColor = UIColor.clear.cgColor
        checkGroup.layer.shadowColor = UIColor.clear.cgColor
        checkGroup.layer.shadowOpacity = 1
        checkGroup.layer.position = CGPoint(x: 3, y: 3)
        checkGroup.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        checkGroup.layer.masksToBounds = false
    }

    private func createBorder() {
        border = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        border.backgroundColor = UIColor.clear
        border.layer.anchorPoint = CGPoint(x: 0, y: 0)
        border.layer.shadowOffset = CGSize(width: 0, height: 0)
        border.layer.borderColor = UIColor.clear.cgColor
        border.layer.shadowColor = UIColor.clear.cgColor
        border.layer.shadowOpacity = 1
        border.layer.position = CGPoint(x: 3, y: 3)
        border.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        border.layer.masksToBounds = false
        border.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        border.shapeLayer.strokeColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        border.shapeLayer.fillColor = nil
        border.shapeLayer.miterLimit = 4
        border.shapeLayer.lineDashPattern = []
        border.shapeLayer.lineDashPhase = 0
        border.shapeLayer.lineWidth = 3
        border.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createBorder1() {
        border_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        border_1.backgroundColor = UIColor.clear
        border_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        border_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        border_1.layer.borderColor = UIColor.clear.cgColor
        border_1.layer.shadowColor = UIColor.clear.cgColor
        border_1.layer.shadowOpacity = 1
        border_1.layer.position = CGPoint(x: 0, y: 0)
        border_1.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        border_1.layer.masksToBounds = false
        let border_1Mask = CAShapeLayer()
        border_1Mask.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!
        border_1.layer.mask = border_1Mask
    }

    private func createCheckLeft() {
        checkLeft = ShapeView(frame: CGRect(x: -4, y: 2.5, width: 15, height: 15))
        checkLeft.backgroundColor = UIColor.clear
        checkLeft.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkLeft.transform = CGAffineTransform(rotationAngle: -0.305556 * CGFloat.pi)
        checkLeft.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkLeft.layer.borderColor = UIColor.clear.cgColor
        checkLeft.layer.shadowColor = UIColor.clear.cgColor
        checkLeft.layer.shadowOpacity = 1
        checkLeft.layer.position = CGPoint(x: -4, y: 2.5)
        checkLeft.layer.bounds = CGRect(x: 0, y: 0, width: 15, height: 15)
        checkLeft.layer.masksToBounds = false
        checkLeft.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkLeft.shapeLayer.strokeColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        checkLeft.shapeLayer.fillColor = nil
        checkLeft.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkLeft.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkLeft.shapeLayer.strokeStart = 0.73
        checkLeft.shapeLayer.miterLimit = 4
        checkLeft.shapeLayer.lineDashPattern = []
        checkLeft.shapeLayer.lineDashPhase = 0
        checkLeft.shapeLayer.lineWidth = 3
        checkLeft.shapeLayer.path = CGPathCreateWithSVGString("M0,0l15,15")!

    }

    private func createCheckRight() {
        checkRight = ShapeView(frame: CGRect(x: 34, y: -5.5, width: 23, height: 23))
        checkRight.backgroundColor = UIColor.clear
        checkRight.layer.anchorPoint = CGPoint(x: 1, y: 0)
        checkRight.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        checkRight.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkRight.layer.borderColor = UIColor.clear.cgColor
        checkRight.layer.shadowColor = UIColor.clear.cgColor
        checkRight.layer.shadowOpacity = 1
        checkRight.layer.position = CGPoint(x: 34, y: -5.5)
        checkRight.layer.bounds = CGRect(x: 0, y: 0, width: 23, height: 23)
        checkRight.layer.masksToBounds = false
        checkRight.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkRight.shapeLayer.strokeColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        checkRight.shapeLayer.fillColor = nil
        checkRight.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkRight.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkRight.shapeLayer.strokeEnd = 0.4
        checkRight.shapeLayer.miterLimit = 4
        checkRight.shapeLayer.lineDashPattern = []
        checkRight.shapeLayer.lineDashPhase = 0
        checkRight.shapeLayer.lineWidth = 3
        checkRight.shapeLayer.path = CGPathCreateWithSVGString("M0,23l23,-23")!

    }

    private func addSubviews() {
        border_1.addSubview(checkLeft)
        border_1.addSubview(checkRight)
        checkGroup.addSubview(border_1)
        addSubview(checkGroup)
        addSubview(border)
    }
}