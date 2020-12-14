// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MondoView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var border: ShapeView!
    public var border_1: ShapeView!
    public var bottom: ShapeView!
    public var top: ShapeView!
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
            createBorder()
            createBorder1()
            createBottom()
            createTop()
            createCheckLeft()
            createCheckRight()
        }
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
        let borderMask = CAShapeLayer()
        borderMask.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!
        border.layer.mask = borderMask
    }

    private func createBorder1() {
        border_1 = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        border_1.backgroundColor = UIColor.clear
        border_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        border_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        border_1.layer.borderColor = UIColor.clear.cgColor
        border_1.layer.shadowColor = UIColor.clear.cgColor
        border_1.layer.shadowOpacity = 1
        border_1.layer.position = CGPoint(x: 3, y: 3)
        border_1.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        border_1.layer.masksToBounds = false
        border_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        border_1.shapeLayer.strokeColor = UIColor(red: 0, green: 0.482, blue: 1, alpha: 1).cgColor
        border_1.shapeLayer.fillColor = nil
        border_1.shapeLayer.miterLimit = 4
        border_1.shapeLayer.lineDashPattern = []
        border_1.shapeLayer.lineDashPhase = 0
        border_1.shapeLayer.lineWidth = 2
        border_1.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createBottom() {
        bottom = ShapeView(frame: CGRect(x: 0, y: 23.92, width: 26, height: 22.08))
        bottom.backgroundColor = UIColor.clear
        bottom.layer.anchorPoint = CGPoint(x: 0, y: 0)
        bottom.layer.shadowOffset = CGSize(width: 0, height: 0)
        bottom.layer.borderColor = UIColor.clear.cgColor
        bottom.layer.shadowColor = UIColor.clear.cgColor
        bottom.layer.shadowOpacity = 1
        bottom.layer.position = CGPoint(x: 0, y: 23.92)
        bottom.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 22.08)
        bottom.layer.masksToBounds = false
        bottom.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        bottom.shapeLayer.fillColor = UIColor(red: 0, green: 0.482, blue: 1, alpha: 1).cgColor
        bottom.shapeLayer.miterLimit = 4
        bottom.shapeLayer.lineDashPattern = []
        bottom.shapeLayer.lineDashPhase = 0
        bottom.shapeLayer.lineWidth = 2
        bottom.shapeLayer.path = CGPathCreateWithSVGString("M0,3.998l0,14.083c0,2.209,1.791,3.999,4,3.999l18,0c2.209,0,4,-1.791,4,-3.999l0,-17.996c0,-0.028,-0,-0.057,-0.001,-0.085l-14.999,14.996 -11,-10.998 0,0zM0,3.998")!

    }

    private func createTop() {
        top = ShapeView(frame: CGRect(x: 0, y: -20, width: 25.32, height: 16.09))
        top.backgroundColor = UIColor.clear
        top.layer.anchorPoint = CGPoint(x: 0, y: 0)
        top.layer.shadowOffset = CGSize(width: 0, height: 0)
        top.layer.borderColor = UIColor.clear.cgColor
        top.layer.shadowColor = UIColor.clear.cgColor
        top.layer.shadowOpacity = 1
        top.layer.position = CGPoint(x: 0, y: -20)
        top.layer.bounds = CGRect(x: 0, y: 0, width: 25.32, height: 16.09)
        top.layer.masksToBounds = false
        top.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        top.shapeLayer.fillColor = UIColor(red: 0, green: 0.482, blue: 1, alpha: 1).cgColor
        top.shapeLayer.miterLimit = 4
        top.shapeLayer.lineDashPattern = []
        top.shapeLayer.lineDashPhase = 0
        top.shapeLayer.lineWidth = 2
        top.shapeLayer.path = CGPathCreateWithSVGString("M25.32,1.767c-0.719,-1.066,-1.937,-1.767,-3.319,-1.767l-18.001,0c-2.209,0,-4,1.791,-4,4.001l0,1.086 11,11.003 14.32,-14.323 0,0zM25.32,1.767")!

    }

    private func createCheckLeft() {
        checkLeft = ShapeView(frame: CGRect(x: -4, y: 2.5, width: 15, height: 15))
        checkLeft.backgroundColor = UIColor.clear
        checkLeft.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkLeft.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkLeft.layer.borderColor = UIColor.clear.cgColor
        checkLeft.layer.shadowColor = UIColor.clear.cgColor
        checkLeft.layer.shadowOpacity = 1
        checkLeft.layer.position = CGPoint(x: -4, y: 2.5)
        checkLeft.layer.bounds = CGRect(x: 0, y: 0, width: 15, height: 15)
        checkLeft.layer.masksToBounds = false
        checkLeft.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkLeft.shapeLayer.strokeColor = UIColor(red: 0, green: 0.482, blue: 1, alpha: 1).cgColor
        checkLeft.shapeLayer.fillColor = nil
        checkLeft.shapeLayer.strokeEnd = 0.2
        checkLeft.shapeLayer.miterLimit = 4
        checkLeft.shapeLayer.lineDashPattern = []
        checkLeft.shapeLayer.lineDashPhase = 0
        checkLeft.shapeLayer.lineWidth = 3
        checkLeft.shapeLayer.path = CGPathCreateWithSVGString("M0,0l15,15")!

    }

    private func createCheckRight() {
        checkRight = ShapeView(frame: CGRect(x: 11, y: -5.5, width: 23, height: 23))
        checkRight.backgroundColor = UIColor.clear
        checkRight.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkRight.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkRight.layer.borderColor = UIColor.clear.cgColor
        checkRight.layer.shadowColor = UIColor.clear.cgColor
        checkRight.layer.shadowOpacity = 1
        checkRight.layer.position = CGPoint(x: 11, y: -5.5)
        checkRight.layer.bounds = CGRect(x: 0, y: 0, width: 23, height: 23)
        checkRight.layer.masksToBounds = false
        checkRight.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkRight.shapeLayer.strokeColor = UIColor(red: 0, green: 0.482, blue: 1, alpha: 1).cgColor
        checkRight.shapeLayer.fillColor = nil
        checkRight.shapeLayer.strokeStart = 0.65
        checkRight.shapeLayer.miterLimit = 4
        checkRight.shapeLayer.lineDashPattern = []
        checkRight.shapeLayer.lineDashPhase = 0
        checkRight.shapeLayer.lineWidth = 3
        checkRight.shapeLayer.path = CGPathCreateWithSVGString("M0,23l23,-23")!

    }

    private func addSubviews() {
        border.addSubview(bottom)
        border.addSubview(top)
        border.addSubview(checkLeft)
        border.addSubview(checkRight)
        addSubview(border)
        addSubview(border_1)
    }
}
