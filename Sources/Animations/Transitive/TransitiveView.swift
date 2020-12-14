// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class TransitiveView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1)
    }

    public var maskGroup: UIView!
    public var border: ShapeView!
    public var check: ShapeView!
    public var maskLayer: ShapeView!
    public var circle: ShapeView!

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
            createMaskGroup()
            createBorder()
            createCheck()
            createMaskLayer()
            createCircle()
        }
    }

    private func createMaskGroup() {
        maskGroup = UIView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        maskGroup.backgroundColor = UIColor.clear
        maskGroup.layer.anchorPoint = CGPoint(x: 0, y: 0)
        maskGroup.layer.shadowOffset = CGSize(width: 0, height: 0)
        maskGroup.layer.borderWidth = 1
        maskGroup.layer.borderColor = UIColor.clear.cgColor
        maskGroup.layer.shadowColor = UIColor.clear.cgColor
        maskGroup.layer.shadowOpacity = 1
        maskGroup.layer.position = CGPoint(x: 3, y: 3)
        maskGroup.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        maskGroup.layer.masksToBounds = false
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
        border.shapeLayer.strokeColor = UIColor.white.cgColor
        border.shapeLayer.fillColor = nil
        border.shapeLayer.miterLimit = 4
        border.shapeLayer.lineDashPattern = []
        border.shapeLayer.lineDashPhase = 0
        border.shapeLayer.lineWidth = 2
        border.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 10, y: 16, width: 12.5, height: 8.5))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 10, y: 16)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 8.5)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 3
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.25,0 6.25,0")!

    }

    private func createMaskLayer() {
        maskLayer = ShapeView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        maskLayer.backgroundColor = UIColor.clear
        maskLayer.layer.anchorPoint = CGPoint(x: 0, y: 0)
        maskLayer.layer.shadowOffset = CGSize(width: 0, height: 0)
        maskLayer.layer.borderColor = UIColor.clear.cgColor
        maskLayer.layer.shadowColor = UIColor.clear.cgColor
        maskLayer.layer.shadowOpacity = 1
        maskLayer.layer.position = CGPoint(x: 0, y: 0)
        maskLayer.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        maskLayer.layer.masksToBounds = false
        let maskLayerMask = CAShapeLayer()
        maskLayerMask.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!
        maskLayer.layer.mask = maskLayerMask
    }

    private func createCircle() {
        circle = ShapeView(frame: CGRect(x: 20, y: 20, width: 46, height: 46))
        circle.backgroundColor = UIColor.clear
        circle.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circle.layer.shadowOffset = CGSize(width: 0, height: 0)
        circle.layer.borderColor = UIColor.clear.cgColor
        circle.layer.shadowColor = UIColor.clear.cgColor
        circle.layer.shadowOpacity = 1
        circle.layer.position = CGPoint(x: 20, y: 20)
        circle.layer.bounds = CGRect(x: 0, y: 0, width: 46, height: 46)
        circle.layer.masksToBounds = false
        circle.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circle.shapeLayer.fillColor = UIColor.white.cgColor
        circle.shapeLayer.miterLimit = 4
        circle.shapeLayer.lineDashPattern = []
        circle.shapeLayer.lineDashPhase = 0
        circle.shapeLayer.lineWidth = 1
        circle.shapeLayer.path = CGPathCreateWithSVGString("M23,46c12.65,0,23,-10.35,23,-23 0,-12.65,-10.35,-23,-23,-23 -12.65,0,-23,10.35,-23,23 0,12.65,10.35,23,23,23zM23,46")!

    }

    private func addSubviews() {
        maskLayer.addSubview(circle)
        maskGroup.addSubview(maskLayer)
        addSubview(maskGroup)
        addSubview(border)
        addSubview(check)
    }
}
