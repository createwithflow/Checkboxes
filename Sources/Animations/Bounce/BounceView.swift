// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class BounceView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var box: ShapeView!
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
            createBox()
            createCheck()
        }
    }

    private func createBox() {
        box = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        box.backgroundColor = UIColor.clear
        box.layer.anchorPoint = CGPoint(x: 0, y: 0)
        box.layer.shadowOffset = CGSize(width: 0, height: 0)
        box.layer.borderColor = UIColor.clear.cgColor
        box.layer.shadowColor = UIColor.clear.cgColor
        box.layer.shadowOpacity = 1
        box.layer.position = CGPoint(x: 3, y: 3)
        box.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        box.layer.masksToBounds = false
        box.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        box.shapeLayer.strokeColor = UIColor(red: 0.463, green: 0.275, blue: 0.988, alpha: 1).cgColor
        box.shapeLayer.fillColor = nil
        box.shapeLayer.miterLimit = 4
        box.shapeLayer.lineDashPattern = []
        box.shapeLayer.lineDashPhase = 0
        box.shapeLayer.lineWidth = 2
        box.shapeLayer.path = CGPathCreateWithSVGString("M0,3c-0,-1.646,1.354,-3,3,-3l20,0c1.646,0,3,1.354,3,3l0,20c0,1.646,-1.354,3,-3,3l-20,0c-1.646,0,-3,-1.354,-3,-3l0,-20zM0,3")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 16.25, y: 16.25, width: 9.07, height: 6.17))
        check.backgroundColor = UIColor.clear
        check.alpha = 0
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 16.25, y: 16.25)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 9.07, height: 6.17)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor(red: 0.463, green: 0.275, blue: 0.988, alpha: 1).cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 2.5
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,3.266l2.902,2.904 6.168,-6.17")!

    }

    private func addSubviews() {
        addSubview(box)
        addSubview(check)
    }
}
