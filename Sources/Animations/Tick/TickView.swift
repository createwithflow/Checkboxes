// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class TickView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var outerBox: ShapeView!
    public var innerBox: ShapeView!
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
            createOuterBox()
            createInnerBox()
            createCheck()
        }
    }

    private func createOuterBox() {
        outerBox = ShapeView(frame: CGRect(x: 2, y: 2, width: 28, height: 28))
        outerBox.backgroundColor = UIColor.clear
        outerBox.layer.anchorPoint = CGPoint(x: 0, y: 0)
        outerBox.layer.shadowOffset = CGSize(width: 0, height: 0)
        outerBox.layer.borderColor = UIColor.clear.cgColor
        outerBox.layer.shadowColor = UIColor.clear.cgColor
        outerBox.layer.shadowOpacity = 1
        outerBox.layer.position = CGPoint(x: 2, y: 2)
        outerBox.layer.bounds = CGRect(x: 0, y: 0, width: 28, height: 28)
        outerBox.layer.masksToBounds = false
        outerBox.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        outerBox.shapeLayer.fillColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        outerBox.shapeLayer.miterLimit = 4
        outerBox.shapeLayer.lineDashPattern = []
        outerBox.shapeLayer.lineDashPhase = 0
        outerBox.shapeLayer.lineWidth = 2
        outerBox.shapeLayer.path = CGPathCreateWithSVGString("M0,4c0,-2.209,1.791,-4,4,-4l20,0c2.209,0,4,1.791,4,4l0,20c0,2.209,-1.791,4,-4,4l-20,0c-2.209,0,-4,-1.791,-4,-4l0,-20 0,0zM0,4")!

    }

    private func createInnerBox() {
        innerBox = ShapeView(frame: CGRect(x: 4, y: 4, width: 24, height: 24))
        innerBox.backgroundColor = UIColor.clear
        innerBox.layer.anchorPoint = CGPoint(x: 0, y: 0)
        innerBox.layer.shadowOffset = CGSize(width: 0, height: 0)
        innerBox.layer.borderColor = UIColor.clear.cgColor
        innerBox.layer.shadowColor = UIColor.clear.cgColor
        innerBox.layer.shadowOpacity = 1
        innerBox.layer.position = CGPoint(x: 4, y: 4)
        innerBox.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        innerBox.layer.masksToBounds = false
        innerBox.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        innerBox.shapeLayer.fillColor = UIColor.white.cgColor
        innerBox.shapeLayer.miterLimit = 4
        innerBox.shapeLayer.lineDashPattern = []
        innerBox.shapeLayer.lineDashPhase = 0
        innerBox.shapeLayer.lineWidth = 2
        innerBox.shapeLayer.path = CGPathCreateWithSVGString("M2,0c-1.105,0,-2,0.895,-2,2l0,20c0,1.105,0.895,2,2,2l20,0c1.105,0,2,-0.895,2,-2l0,-20c0,-1.105,-0.895,-2,-2,-2l-20,0 0,0zM2,0")!

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
        check.shapeLayer.strokeColor = UIColor.white.cgColor
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
        addSubview(outerBox)
        addSubview(innerBox)
        addSubview(check)
    }
}
