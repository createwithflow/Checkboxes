// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class AlarmView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
    }

    public var border: ShapeView!
    public var checkShort: ShapeView!
    public var checkLong: ShapeView!

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

    func setup() {
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
            createCheckShort()
            createCheckLong()
        }
    }

    private func createBorder() {
        border = ShapeView(frame: CGRect(x: 3, y: 3, width: 25.5, height: 26.5))
        border.backgroundColor = UIColor.clear
        border.layer.anchorPoint = CGPoint(x: 0, y: 0)
        border.layer.shadowOffset = CGSize(width: 0, height: 0)
        border.layer.borderColor = UIColor.clear.cgColor
        border.layer.shadowColor = UIColor.clear.cgColor
        border.layer.shadowOpacity = 1
        border.layer.position = CGPoint(x: 3, y: 3)
        border.layer.bounds = CGRect(x: 0, y: 0, width: 25.5, height: 26.5)
        border.layer.masksToBounds = false
        border.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        border.shapeLayer.strokeColor = UIColor.white.cgColor
        border.shapeLayer.fillColor = nil
        border.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "square")
        border.shapeLayer.miterLimit = 4
        border.shapeLayer.lineDashPattern = []
        border.shapeLayer.lineDashPhase = 0
        border.shapeLayer.lineWidth = 2
        border.shapeLayer.path = CGPathCreateWithSVGString("M12.75,26.5l8.75,0c2.209,0,4,-1.791,4,-4l0,-18.5c0,-2.209,-1.791,-4,-4,-4l-8.75,0 -8.75,0c-2.209,0,-4,1.791,-4,4l0,18.5c0,2.209,1.791,4,4,4l8.75,0 0,0zM12.75,26.5")!

    }

    private func createCheckShort() {
        checkShort = ShapeView(frame: CGRect(x: 16, y: 16, width: 4, height: 4))
        checkShort.backgroundColor = UIColor.clear
        checkShort.layer.anchorPoint = CGPoint(x: 1, y: 1)
        checkShort.transform = CGAffineTransform(rotationAngle: -1.75 * CGFloat.pi)
        checkShort.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkShort.layer.borderColor = UIColor.clear.cgColor
        checkShort.layer.shadowColor = UIColor.clear.cgColor
        checkShort.layer.shadowOpacity = 1
        checkShort.layer.position = CGPoint(x: 16, y: 16)
        checkShort.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        checkShort.layer.masksToBounds = false
        checkShort.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkShort.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        checkShort.shapeLayer.fillColor = nil
        checkShort.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkShort.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkShort.shapeLayer.miterLimit = 4
        checkShort.shapeLayer.lineDashPattern = []
        checkShort.shapeLayer.lineDashPhase = 0
        checkShort.shapeLayer.lineWidth = 3
        checkShort.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4,4")!

    }

    private func createCheckLong() {
        checkLong = ShapeView(frame: CGRect(x: 16, y: 16, width: 8.5, height: 8.5))
        checkLong.backgroundColor = UIColor.clear
        checkLong.layer.anchorPoint = CGPoint(x: 0, y: 1)
        checkLong.transform = CGAffineTransform(rotationAngle: -1.25 * CGFloat.pi)
        checkLong.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkLong.layer.borderColor = UIColor.clear.cgColor
        checkLong.layer.shadowColor = UIColor.clear.cgColor
        checkLong.layer.shadowOpacity = 1
        checkLong.layer.position = CGPoint(x: 16, y: 16)
        checkLong.layer.bounds = CGRect(x: 0, y: 0, width: 8.5, height: 8.5)
        checkLong.layer.masksToBounds = false
        checkLong.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkLong.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        checkLong.shapeLayer.fillColor = nil
        checkLong.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkLong.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkLong.shapeLayer.strokeEnd = 0.47
        checkLong.shapeLayer.miterLimit = 4
        checkLong.shapeLayer.lineDashPattern = []
        checkLong.shapeLayer.lineDashPhase = 0
        checkLong.shapeLayer.lineWidth = 3
        checkLong.shapeLayer.path = CGPathCreateWithSVGString("M0,8.5l8.5,-8.5")!

    }

    private func addSubviews() {
        addSubview(border)
        addSubview(checkShort)
        addSubview(checkLong)
    }
}
