// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class LayersView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var circle: ShapeView!
    public var dot: ShapeView!
    public var checkForeground: ShapeView!

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
            createCircle()
            createDot()
            createCheckForeground()
        }
    }

    private func createCircle() {
        circle = ShapeView(frame: CGRect(x: 6, y: 6, width: 20, height: 20))
        circle.backgroundColor = UIColor.clear
        circle.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circle.layer.shadowOffset = CGSize(width: 0, height: 1)
        circle.layer.shadowRadius = 0.5
        circle.layer.borderColor = UIColor.clear.cgColor
        circle.layer.shadowColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 0.5).cgColor
        circle.layer.shadowOpacity = 1
        circle.layer.position = CGPoint(x: 6, y: 6)
        circle.layer.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
        circle.layer.masksToBounds = false
        circle.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circle.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        circle.shapeLayer.fillColor = nil
        circle.shapeLayer.miterLimit = 4
        circle.shapeLayer.lineDashPattern = []
        circle.shapeLayer.lineDashPhase = 0
        circle.shapeLayer.lineWidth = 2
        circle.shapeLayer.path = CGPathCreateWithSVGString("M10,20c5.5,0,10,-4.5,10,-10 0,-5.5,-4.5,-10,-10,-10 -5.5,0,-10,4.5,-10,10 0,5.5,4.5,10,10,10zM10,20")!

    }

    private func createDot() {
        dot = ShapeView(frame: CGRect(x: 17, y: 15, width: 2, height: 2))
        dot.backgroundColor = UIColor.clear
        dot.layer.anchorPoint = CGPoint(x: 0, y: 0)
        dot.alpha = 0
        dot.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        dot.transform = dot.transform.scaledBy(x: 1, y: -1)
        dot.layer.shadowOffset = CGSize(width: 0, height: 0)
        dot.layer.borderColor = UIColor.clear.cgColor
        dot.layer.shadowColor = UIColor.clear.cgColor
        dot.layer.shadowOpacity = 1
        dot.layer.position = CGPoint(x: 17, y: 15)
        dot.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        dot.layer.masksToBounds = false
        dot.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        dot.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        dot.shapeLayer.miterLimit = 4
        dot.shapeLayer.lineDashPattern = []
        dot.shapeLayer.lineDashPhase = 0
        dot.shapeLayer.lineWidth = 10
        dot.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createCheckForeground() {
        checkForeground = ShapeView(frame: CGRect(x: 11, y: 8, width: 16, height: 11))
        checkForeground.backgroundColor = UIColor.clear
        checkForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkForeground.layer.shadowOffset = CGSize(width: 0, height: 1)
        checkForeground.layer.shadowRadius = 0.5
        checkForeground.layer.borderColor = UIColor.clear.cgColor
        checkForeground.layer.shadowColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 0.252).cgColor
        checkForeground.layer.shadowOpacity = 1
        checkForeground.layer.position = CGPoint(x: 11, y: 8)
        checkForeground.layer.bounds = CGRect(x: 0, y: 0, width: 16, height: 11)
        checkForeground.layer.masksToBounds = false
        checkForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkForeground.shapeLayer.strokeColor = UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor
        checkForeground.shapeLayer.fillColor = nil
        checkForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkForeground.shapeLayer.strokeEnd = 0
        checkForeground.shapeLayer.miterLimit = 4
        checkForeground.shapeLayer.lineDashPattern = []
        checkForeground.shapeLayer.lineDashPhase = 0
        checkForeground.shapeLayer.lineWidth = 3
        checkForeground.shapeLayer.path = CGPathCreateWithSVGString("M0,5.824l5.12,5.176 10.88,-11")!

    }

    private func addSubviews() {
        addSubview(circle)
        addSubview(dot)
        addSubview(checkForeground)
    }
}
