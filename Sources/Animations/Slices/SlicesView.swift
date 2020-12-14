// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class SlicesView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var group: UIView!
    public var outline: ShapeView!
    public var mask_1: ShapeView!
    public var r0: ShapeView!
    public var r1: ShapeView!
    public var r2: ShapeView!
    public var r3: ShapeView!
    public var r4: ShapeView!

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
            createGroup()
            createOutline()
            createMask1()
            createR0()
            createR1()
            createR2()
            createR3()
            createR4()
        }
    }

    private func createGroup() {
        group = UIView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        group.backgroundColor = UIColor.clear
        group.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group.layer.shadowOffset = CGSize(width: 0, height: 0)
        group.layer.borderWidth = 1
        group.layer.borderColor = UIColor.clear.cgColor
        group.layer.shadowColor = UIColor.clear.cgColor
        group.layer.shadowOpacity = 1
        group.layer.position = CGPoint(x: 3, y: 3)
        group.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        group.layer.masksToBounds = false
    }

    private func createOutline() {
        outline = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        outline.backgroundColor = UIColor.clear
        outline.layer.anchorPoint = CGPoint(x: 0, y: 0)
        outline.layer.shadowOffset = CGSize(width: 0, height: 0)
        outline.layer.borderColor = UIColor.clear.cgColor
        outline.layer.shadowColor = UIColor.clear.cgColor
        outline.layer.shadowOpacity = 1
        outline.layer.position = CGPoint(x: 3, y: 3)
        outline.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        outline.layer.masksToBounds = false
        outline.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        outline.shapeLayer.strokeColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        outline.shapeLayer.fillColor = nil
        outline.shapeLayer.miterLimit = 4
        outline.shapeLayer.lineDashPattern = []
        outline.shapeLayer.lineDashPhase = 0
        outline.shapeLayer.lineWidth = 2
        outline.shapeLayer.path = CGPathCreateWithSVGString("M0,2c-0,-1.097,0.903,-2,2,-2l22,0c1.097,0,2,0.903,2,2l0,22c0,1.097,-0.903,2,-2,2l-22,0c-1.097,0,-2,-0.903,-2,-2s0,0,0,0l0,-22zM0,2")!

    }

    private func createMask1() {
        mask_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        mask_1.backgroundColor = UIColor.clear
        mask_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        mask_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        mask_1.layer.borderColor = UIColor.clear.cgColor
        mask_1.layer.shadowColor = UIColor.clear.cgColor
        mask_1.layer.shadowOpacity = 1
        mask_1.layer.position = CGPoint(x: 0, y: 0)
        mask_1.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        mask_1.layer.masksToBounds = false
        let mask_1Mask = CAShapeLayer()
        mask_1Mask.path = CGPathCreateWithSVGString("M0,2c-0,-1.097,0.903,-2,2,-2l22,0c1.097,0,2,0.903,2,2l0,22c0,1.097,-0.903,2,-2,2l-22,0c-1.097,0,-2,-0.903,-2,-2s0,0,0,0l0,-22zM0,2")!
        mask_1.layer.mask = mask_1Mask
    }

    private func createR0() {
        r0 = ShapeView(frame: CGRect(x: -4, y: -20, width: 23.3, height: 23.3))
        r0.backgroundColor = UIColor.clear
        r0.layer.anchorPoint = CGPoint(x: 0, y: 0)
        r0.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        r0.layer.shadowOffset = CGSize(width: 0, height: 0)
        r0.layer.borderColor = UIColor.clear.cgColor
        r0.layer.shadowColor = UIColor.clear.cgColor
        r0.layer.shadowOpacity = 1
        r0.layer.position = CGPoint(x: -4, y: -20)
        r0.layer.bounds = CGRect(x: 0, y: 0, width: 23.3, height: 23.3)
        r0.layer.masksToBounds = false
        r0.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        r0.shapeLayer.fillColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        r0.shapeLayer.miterLimit = 4
        r0.shapeLayer.lineDashPattern = []
        r0.shapeLayer.lineDashPhase = 0
        r0.shapeLayer.lineWidth = 1
        r0.shapeLayer.path = CGPathCreateWithSVGString("M0,0l23.3,0 0,23.3 -23.3,0 0,-23.3zM0,0")!

    }

    private func createR1() {
        r1 = ShapeView(frame: CGRect(x: 28, y: 23, width: 23.3, height: 23.3))
        r1.backgroundColor = UIColor.clear
        r1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        r1.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        r1.layer.shadowOffset = CGSize(width: 0, height: 0)
        r1.layer.borderColor = UIColor.clear.cgColor
        r1.layer.shadowColor = UIColor.clear.cgColor
        r1.layer.shadowOpacity = 1
        r1.layer.position = CGPoint(x: 28, y: 23)
        r1.layer.bounds = CGRect(x: 0, y: 0, width: 23.3, height: 23.3)
        r1.layer.masksToBounds = false
        r1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        r1.shapeLayer.fillColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        r1.shapeLayer.miterLimit = 4
        r1.shapeLayer.lineDashPattern = []
        r1.shapeLayer.lineDashPhase = 0
        r1.shapeLayer.lineWidth = 1
        r1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l23.3,0 0,23.3 -23.3,0 0,-23.3zM0,0")!

    }

    private func createR2() {
        r2 = ShapeView(frame: CGRect(x: 13, y: 44, width: 23.3, height: 23.3))
        r2.backgroundColor = UIColor.clear
        r2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        r2.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        r2.layer.shadowOffset = CGSize(width: 0, height: 0)
        r2.layer.borderColor = UIColor.clear.cgColor
        r2.layer.shadowColor = UIColor.clear.cgColor
        r2.layer.shadowOpacity = 1
        r2.layer.position = CGPoint(x: 13, y: 44)
        r2.layer.bounds = CGRect(x: 0, y: 0, width: 23.3, height: 23.3)
        r2.layer.masksToBounds = false
        r2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        r2.shapeLayer.fillColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        r2.shapeLayer.miterLimit = 4
        r2.shapeLayer.lineDashPattern = []
        r2.shapeLayer.lineDashPhase = 0
        r2.shapeLayer.lineWidth = 1
        r2.shapeLayer.path = CGPathCreateWithSVGString("M0,0l23.3,0 0,23.3 -23.3,0 0,-23.3zM0,0")!

    }

    private func createR3() {
        r3 = ShapeView(frame: CGRect(x: -22, y: 38, width: 23.3, height: 23.3))
        r3.backgroundColor = UIColor.clear
        r3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        r3.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        r3.layer.shadowOffset = CGSize(width: 0, height: 0)
        r3.layer.borderColor = UIColor.clear.cgColor
        r3.layer.shadowColor = UIColor.clear.cgColor
        r3.layer.shadowOpacity = 1
        r3.layer.position = CGPoint(x: -22, y: 38)
        r3.layer.bounds = CGRect(x: 0, y: 0, width: 23.3, height: 23.3)
        r3.layer.masksToBounds = false
        r3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        r3.shapeLayer.fillColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        r3.shapeLayer.miterLimit = 4
        r3.shapeLayer.lineDashPattern = []
        r3.shapeLayer.lineDashPhase = 0
        r3.shapeLayer.lineWidth = 1
        r3.shapeLayer.path = CGPathCreateWithSVGString("M0,0l23.3,0 0,23.3 -23.3,0 0,-23.3zM0,0")!

    }

    private func createR4() {
        r4 = ShapeView(frame: CGRect(x: -31, y: -2, width: 23.3, height: 23.3))
        r4.backgroundColor = UIColor.clear
        r4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        r4.transform = CGAffineTransform(rotationAngle: -0.25 * CGFloat.pi)
        r4.layer.shadowOffset = CGSize(width: 0, height: 0)
        r4.layer.borderColor = UIColor.clear.cgColor
        r4.layer.shadowColor = UIColor.clear.cgColor
        r4.layer.shadowOpacity = 1
        r4.layer.position = CGPoint(x: -31, y: -2)
        r4.layer.bounds = CGRect(x: 0, y: 0, width: 23.3, height: 23.3)
        r4.layer.masksToBounds = false
        r4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        r4.shapeLayer.fillColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1).cgColor
        r4.shapeLayer.miterLimit = 4
        r4.shapeLayer.lineDashPattern = []
        r4.shapeLayer.lineDashPhase = 0
        r4.shapeLayer.lineWidth = 1
        r4.shapeLayer.path = CGPathCreateWithSVGString("M0,0l23.3,0 0,23.3 -23.3,0 0,-23.3zM0,0")!

    }

    private func addSubviews() {
        mask_1.addSubview(r0)
        mask_1.addSubview(r1)
        mask_1.addSubview(r2)
        mask_1.addSubview(r3)
        mask_1.addSubview(r4)
        group.addSubview(mask_1)
        addSubview(group)
        addSubview(outline)
    }
}
