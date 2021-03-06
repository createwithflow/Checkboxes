// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class AllinoneView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var border: ShapeView!
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
            createBorder()
            createCheck()
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
        border.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        border.shapeLayer.strokeColor = UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor
        border.shapeLayer.fillColor = nil
        border.shapeLayer.miterLimit = 4
        border.shapeLayer.lineDashPattern = []
        border.shapeLayer.lineDashPhase = 0
        border.shapeLayer.lineWidth = 3
        border.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 3, y: 3)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor(red: 0.086, green: 0.086, blue: 0.114, alpha: 1).cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.strokeEnd = 0
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 3
        check.shapeLayer.path = CGPathCreateWithSVGString("M22,0l0,0c2.209,0,4,1.791,4,4l0,9 0,9c0,2.209,-1.791,4,-4,4l-18,0c-2.209,0,-4,-1.791,-4,-4l0,-9 0,-9c0,-2.209,1.791,-4,4,-4l18,0zM21.97,0c1.195,0,3,0.5,2,2.5l-12.377,13.552 -4,-4")!

    }

    private func addSubviews() {
        addSubview(border)
        addSubview(check)
    }
}
