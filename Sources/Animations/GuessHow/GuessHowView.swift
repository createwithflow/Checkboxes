// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class GuessHowView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var defaultBackground: ShapeView!
    public var defaultCheck: ShapeView!
    public var background: ShapeView!
    public var check: ShapeView!
    public var border: ShapeView!
    public var circle: ShapeView!
    public var circle_1: ShapeView!
    public var circle_2: ShapeView!

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
            createDefaultBackground()
            createDefaultCheck()
            createBackground()
            createCheck()
            createBorder()
            createCircle()
            createCircle1()
            createCircle2()
        }
    }

    private func createDefaultBackground() {
        defaultBackground = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        defaultBackground.backgroundColor = UIColor.clear
        defaultBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        defaultBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        defaultBackground.layer.borderColor = UIColor.clear.cgColor
        defaultBackground.layer.shadowColor = UIColor.clear.cgColor
        defaultBackground.layer.shadowOpacity = 1
        defaultBackground.layer.position = CGPoint(x: 3, y: 3)
        defaultBackground.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        defaultBackground.layer.masksToBounds = false
        defaultBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        defaultBackground.shapeLayer.strokeColor = UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor
        defaultBackground.shapeLayer.fillColor = UIColor(red: 0.89, green: 0.894, blue: 0.898, alpha: 1).cgColor
        defaultBackground.shapeLayer.miterLimit = 4
        defaultBackground.shapeLayer.lineDashPattern = []
        defaultBackground.shapeLayer.lineDashPhase = 0
        defaultBackground.shapeLayer.lineWidth = 3
        defaultBackground.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createDefaultCheck() {
        defaultCheck = ShapeView(frame: CGRect(x: 10, y: 12, width: 12.5, height: 8.5))
        defaultCheck.backgroundColor = UIColor.clear
        defaultCheck.layer.anchorPoint = CGPoint(x: 0, y: 0)
        defaultCheck.layer.shadowOffset = CGSize(width: 0, height: 0)
        defaultCheck.layer.borderColor = UIColor.clear.cgColor
        defaultCheck.layer.shadowColor = UIColor.clear.cgColor
        defaultCheck.layer.shadowOpacity = 1
        defaultCheck.layer.position = CGPoint(x: 10, y: 12)
        defaultCheck.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 8.5)
        defaultCheck.layer.masksToBounds = false
        defaultCheck.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        defaultCheck.shapeLayer.strokeColor = UIColor.white.cgColor
        defaultCheck.shapeLayer.fillColor = nil
        defaultCheck.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        defaultCheck.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        defaultCheck.shapeLayer.miterLimit = 4
        defaultCheck.shapeLayer.lineDashPattern = []
        defaultCheck.shapeLayer.lineDashPhase = 0
        defaultCheck.shapeLayer.lineWidth = 3
        defaultCheck.shapeLayer.path = CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!

    }

    private func createBackground() {
        background = ShapeView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        background.backgroundColor = UIColor.clear
        background.layer.anchorPoint = CGPoint(x: 0, y: 0)
        background.layer.shadowOffset = CGSize(width: 0, height: 0)
        background.layer.borderColor = UIColor.clear.cgColor
        background.layer.shadowColor = UIColor.clear.cgColor
        background.layer.shadowOpacity = 1
        background.layer.position = CGPoint(x: 3, y: 3)
        background.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        background.layer.masksToBounds = false
        let backgroundMask = CAShapeLayer()
        backgroundMask.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!
        background.layer.mask = backgroundMask
    }

    private func createCheck() {
        check = ShapeView(frame: CGRect(x: 8.5, y: 10.5, width: 15.5, height: 11.5))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 8.5, y: 10.5)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 15.5, height: 11.5)
        check.layer.masksToBounds = false
        let checkMask = CAShapeLayer()
        checkMask.path = CGPathCreateWithSVGString("M15.061,0.439c0.586,0.586,0.586,1.536,0,2.121l-8.5,8.5c-0.586,0.586,-1.536,0.586,-2.121,0l-4,-4c-0.586,-0.586,-0.586,-1.536,0,-2.121 0.586,-0.586,1.536,-0.586,2.121,0l2.939,2.939 7.439,-7.439c0.586,-0.586,1.536,-0.586,2.121,0l0,0zM15.061,0.439")!
        check.layer.mask = checkMask
    }

    private func createBorder() {
        border = ShapeView(frame: CGRect(x: 1.5, y: 1.5, width: 29, height: 29))
        border.backgroundColor = UIColor.clear
        border.layer.anchorPoint = CGPoint(x: 0, y: 0)
        border.layer.shadowOffset = CGSize(width: 0, height: 0)
        border.layer.borderColor = UIColor.clear.cgColor
        border.layer.shadowColor = UIColor.clear.cgColor
        border.layer.shadowOpacity = 1
        border.layer.position = CGPoint(x: 1.5, y: 1.5)
        border.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 29)
        border.layer.masksToBounds = false
        let borderMask = CAShapeLayer()
        borderMask.path = CGPathCreateWithSVGString("M0,5.5c0,-3.038,2.462,-5.5,5.5,-5.5l18,0c3.038,0,5.5,2.462,5.5,5.5l0,18c0,3.038,-2.462,5.5,-5.5,5.5l-18,0c-3.038,0,-5.5,-2.462,-5.5,-5.5l0,-18 0,0zM5.5,3c-1.381,0,-2.5,1.119,-2.5,2.5l0,18c0,1.381,1.119,2.5,2.5,2.5l18,0c1.381,0,2.5,-1.119,2.5,-2.5l0,-18c0,-1.381,-1.119,-2.5,-2.5,-2.5l-18,0 0,0zM5.5,3")!
        border.layer.mask = borderMask
    }

    private func createCircle() {
        circle = ShapeView(frame: CGRect(x: -8.5, y: 29.5, width: 46, height: 46))
        circle.backgroundColor = UIColor.clear
        circle.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circle.layer.shadowOffset = CGSize(width: 0, height: 0)
        circle.layer.borderColor = UIColor.clear.cgColor
        circle.layer.shadowColor = UIColor.clear.cgColor
        circle.layer.shadowOpacity = 1
        circle.layer.position = CGPoint(x: -8.5, y: 29.5)
        circle.layer.bounds = CGRect(x: 0, y: 0, width: 46, height: 46)
        circle.layer.masksToBounds = false
        circle.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circle.shapeLayer.fillColor = UIColor(red: 0.463, green: 0.275, blue: 0.988, alpha: 1).cgColor
        circle.shapeLayer.miterLimit = 4
        circle.shapeLayer.lineDashPattern = []
        circle.shapeLayer.lineDashPhase = 0
        circle.shapeLayer.lineWidth = 1
        circle.shapeLayer.path = CGPathCreateWithSVGString("M23,46c12.65,0,23,-10.35,23,-23 0,-12.65,-10.35,-23,-23,-23 -12.65,0,-23,10.35,-23,23 0,12.65,10.35,23,23,23zM23,46")!

    }

    private func createCircle1() {
        circle_1 = ShapeView(frame: CGRect(x: -15.5, y: 20.5, width: 46, height: 46))
        circle_1.backgroundColor = UIColor.clear
        circle_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circle_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        circle_1.layer.borderColor = UIColor.clear.cgColor
        circle_1.layer.shadowColor = UIColor.clear.cgColor
        circle_1.layer.shadowOpacity = 1
        circle_1.layer.position = CGPoint(x: -15.5, y: 20.5)
        circle_1.layer.bounds = CGRect(x: 0, y: 0, width: 46, height: 46)
        circle_1.layer.masksToBounds = false
        circle_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circle_1.shapeLayer.fillColor = UIColor(red: 0.463, green: 0.275, blue: 0.988, alpha: 1).cgColor
        circle_1.shapeLayer.miterLimit = 4
        circle_1.shapeLayer.lineDashPattern = []
        circle_1.shapeLayer.lineDashPhase = 0
        circle_1.shapeLayer.lineWidth = 1
        circle_1.shapeLayer.path = CGPathCreateWithSVGString("M23,46c12.65,0,23,-10.35,23,-23 0,-12.65,-10.35,-23,-23,-23 -12.65,0,-23,10.35,-23,23 0,12.65,10.35,23,23,23zM23,46")!

    }

    private func createCircle2() {
        circle_2 = ShapeView(frame: CGRect(x: -10, y: 28, width: 46, height: 46))
        circle_2.backgroundColor = UIColor.clear
        circle_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circle_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        circle_2.layer.borderColor = UIColor.clear.cgColor
        circle_2.layer.shadowColor = UIColor.clear.cgColor
        circle_2.layer.shadowOpacity = 1
        circle_2.layer.position = CGPoint(x: -10, y: 28)
        circle_2.layer.bounds = CGRect(x: 0, y: 0, width: 46, height: 46)
        circle_2.layer.masksToBounds = false
        circle_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circle_2.shapeLayer.fillColor = UIColor.white.cgColor
        circle_2.shapeLayer.miterLimit = 4
        circle_2.shapeLayer.lineDashPattern = []
        circle_2.shapeLayer.lineDashPhase = 0
        circle_2.shapeLayer.lineWidth = 1
        circle_2.shapeLayer.path = CGPathCreateWithSVGString("M23,46c12.65,0,23,-10.35,23,-23 0,-12.65,-10.35,-23,-23,-23 -12.65,0,-23,10.35,-23,23 0,12.65,10.35,23,23,23zM23,46")!

    }

    private func addSubviews() {
        background.addSubview(circle_2)
        check.addSubview(circle_1)
        border.addSubview(circle)
        addSubview(defaultBackground)
        addSubview(defaultCheck)
        addSubview(background)
        addSubview(check)
        addSubview(border)
    }
}
