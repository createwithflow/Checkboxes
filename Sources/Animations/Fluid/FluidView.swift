// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class FluidView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var maskShape: ShapeView!
    public var border: ShapeView!
    public var background: ShapeView!
    public var whiteBackground: ShapeView!
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
            createMaskShape()
            createBorder()
            createBackground()
            createWhiteBackground()
            createCheck()
        }
    }

    private func createMaskShape() {
        maskShape = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        maskShape.backgroundColor = UIColor.clear
        maskShape.layer.anchorPoint = CGPoint(x: 0, y: 0)
        maskShape.layer.shadowOffset = CGSize(width: 0, height: 0)
        maskShape.layer.borderColor = UIColor.clear.cgColor
        maskShape.layer.shadowColor = UIColor.clear.cgColor
        maskShape.layer.shadowOpacity = 1
        maskShape.layer.position = CGPoint(x: 3, y: 3)
        maskShape.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        maskShape.layer.masksToBounds = false
        let maskShapeMask = CAShapeLayer()
        maskShapeMask.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!
        maskShape.layer.mask = maskShapeMask
    }

    private func createBorder() {
        border = ShapeView(frame: CGRect(x: 16, y: 16, width: 26, height: 26))
        border.backgroundColor = UIColor.clear
        border.layer.shadowOffset = CGSize(width: 0, height: 0)
        border.layer.borderColor = UIColor.clear.cgColor
        border.layer.shadowColor = UIColor.clear.cgColor
        border.layer.shadowOpacity = 1
        border.layer.position = CGPoint(x: 16, y: 16)
        border.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        border.layer.masksToBounds = false
        border.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        border.shapeLayer.strokeColor = UIColor(red: 0.498, green: 0.004, blue: 0.733, alpha: 1).cgColor
        border.shapeLayer.fillColor = nil
        border.shapeLayer.miterLimit = 4
        border.shapeLayer.lineDashPattern = []
        border.shapeLayer.lineDashPhase = 0
        border.shapeLayer.lineWidth = 2
        border.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createBackground() {
        background = ShapeView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        background.backgroundColor = UIColor.clear
        background.layer.anchorPoint = CGPoint(x: 0, y: 0)
        background.layer.shadowOffset = CGSize(width: 0, height: 0)
        background.layer.borderColor = UIColor.clear.cgColor
        background.layer.shadowColor = UIColor.clear.cgColor
        background.layer.shadowOpacity = 1
        background.layer.position = CGPoint(x: 0, y: 0)
        background.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        background.layer.masksToBounds = false
        background.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        background.shapeLayer.strokeColor = UIColor(red: 0.498, green: 0.004, blue: 0.733, alpha: 1).cgColor
        background.shapeLayer.fillColor = UIColor(red: 0.498, green: 0.004, blue: 0.733, alpha: 1).cgColor
        background.shapeLayer.miterLimit = 4
        background.shapeLayer.lineDashPattern = []
        background.shapeLayer.lineDashPhase = 0
        background.shapeLayer.lineWidth = 2
        background.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createWhiteBackground() {
        whiteBackground = ShapeView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        whiteBackground.backgroundColor = UIColor.clear
        whiteBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        whiteBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        whiteBackground.layer.borderColor = UIColor.clear.cgColor
        whiteBackground.layer.shadowColor = UIColor.clear.cgColor
        whiteBackground.layer.shadowOpacity = 1
        whiteBackground.layer.position = CGPoint(x: 0, y: 0)
        whiteBackground.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        whiteBackground.layer.masksToBounds = false
        whiteBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        whiteBackground.shapeLayer.fillColor = UIColor.white.cgColor
        whiteBackground.shapeLayer.miterLimit = 4
        whiteBackground.shapeLayer.lineDashPattern = []
        whiteBackground.shapeLayer.lineDashPhase = 0
        whiteBackground.shapeLayer.lineWidth = 2
        whiteBackground.shapeLayer.path = CGPathCreateWithSVGString("M0,4c0,-2.209,1.791,-4,4,-4l18,0c2.209,0,4,1.791,4,4l0,18c0,2.209,-1.791,4,-4,4l-18,0c-2.209,0,-4,-1.791,-4,-4l0,-18 0,0zM0,4")!

    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 0.5, y: -1)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check.layer.masksToBounds = false
        check.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check.shapeLayer.strokeColor = UIColor.white.cgColor
        check.shapeLayer.fillColor = nil
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.strokeStart = 1
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 3
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func addSubviews() {
        maskShape.addSubview(background)
        maskShape.addSubview(whiteBackground)
        maskShape.addSubview(check)
        addSubview(maskShape)
        addSubview(border)
    }
}
