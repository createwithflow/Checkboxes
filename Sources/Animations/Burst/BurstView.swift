// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class BurstView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var burstGroup: UIView!
    public var checkGroup: UIView!
    public var circleBackground: ShapeView!
    public var circleBackground_1: ShapeView!
    public var circleBackgroundMask: ShapeView!
    public var checkForeground: ShapeView!
    public var burst11: ShapeView!
    public var burst10: ShapeView!
    public var burst9: ShapeView!
    public var burst8: ShapeView!
    public var burst7: ShapeView!
    public var burst6: ShapeView!
    public var burst5: ShapeView!
    public var burst4: ShapeView!
    public var burst3: ShapeView!
    public var burst2: ShapeView!
    public var burst1: ShapeView!
    public var burst0: ShapeView!

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
            createBurstGroup()
            createCheckGroup()
            createCircleBackground()
            createCircleBackground1()
            createCircleBackgroundMask()
            createCheckForeground()
            createBurst11()
            createBurst10()
            createBurst9()
            createBurst8()
            createBurst7()
            createBurst6()
            createBurst5()
            createBurst4()
            createBurst3()
            createBurst2()
            createBurst1()
            createBurst0()
        }
    }

    private func createBurstGroup() {
        burstGroup = UIView(frame: CGRect(x: 16, y: 16, width: 2, height: 2))
        burstGroup.backgroundColor = UIColor.clear
        burstGroup.alpha = 0
        burstGroup.layer.shadowOffset = CGSize(width: 0, height: 0)
        burstGroup.layer.borderWidth = 1
        burstGroup.layer.borderColor = UIColor.clear.cgColor
        burstGroup.layer.shadowColor = UIColor.clear.cgColor
        burstGroup.layer.shadowOpacity = 1
        burstGroup.layer.position = CGPoint(x: 16, y: 16)
        burstGroup.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burstGroup.layer.masksToBounds = false
    }

    private func createCheckGroup() {
        checkGroup = UIView(frame: CGRect(x: 3, y: 3, width: 26, height: 26))
        checkGroup.backgroundColor = UIColor.clear
        checkGroup.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkGroup.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkGroup.layer.borderWidth = 1
        checkGroup.layer.borderColor = UIColor.clear.cgColor
        checkGroup.layer.shadowColor = UIColor.clear.cgColor
        checkGroup.layer.shadowOpacity = 1
        checkGroup.layer.position = CGPoint(x: 3, y: 3)
        checkGroup.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        checkGroup.layer.masksToBounds = false
    }

    private func createCircleBackground() {
        circleBackground = ShapeView(frame: CGRect(x: 29, y: 3, width: 26, height: 26))
        circleBackground.backgroundColor = UIColor.clear
        circleBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleBackground.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        circleBackground.transform = circleBackground.transform.scaledBy(x: 1, y: -1)
        circleBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleBackground.layer.borderColor = UIColor.clear.cgColor
        circleBackground.layer.shadowColor = UIColor.clear.cgColor
        circleBackground.layer.shadowOpacity = 1
        circleBackground.layer.position = CGPoint(x: 29, y: 3)
        circleBackground.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        circleBackground.layer.masksToBounds = false
        circleBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circleBackground.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        circleBackground.shapeLayer.fillColor = nil
        circleBackground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleBackground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleBackground.shapeLayer.miterLimit = 4
        circleBackground.shapeLayer.lineDashPattern = []
        circleBackground.shapeLayer.lineDashPhase = 0
        circleBackground.shapeLayer.lineWidth = 1
        circleBackground.shapeLayer.path = CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!

    }

    private func createCircleBackground1() {
        circleBackground_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        circleBackground_1.backgroundColor = UIColor.clear
        circleBackground_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleBackground_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleBackground_1.layer.borderColor = UIColor.clear.cgColor
        circleBackground_1.layer.shadowColor = UIColor.clear.cgColor
        circleBackground_1.layer.shadowOpacity = 1
        circleBackground_1.layer.position = CGPoint(x: 0, y: 0)
        circleBackground_1.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        circleBackground_1.layer.masksToBounds = false
        let circleBackground_1Mask = CAShapeLayer()
        circleBackground_1Mask.path = CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!
        circleBackground_1.layer.mask = circleBackground_1Mask
    }

    private func createCircleBackgroundMask() {
        circleBackgroundMask = ShapeView(frame: CGRect(x: 0, y: 52, width: 26, height: 26))
        circleBackgroundMask.backgroundColor = UIColor.clear
        circleBackgroundMask.layer.anchorPoint = CGPoint(x: 0, y: 0)
        circleBackgroundMask.transform = circleBackgroundMask.transform.scaledBy(x: 1, y: -1)
        circleBackgroundMask.layer.shadowOffset = CGSize(width: 0, height: 0)
        circleBackgroundMask.layer.borderColor = UIColor.clear.cgColor
        circleBackgroundMask.layer.shadowColor = UIColor.clear.cgColor
        circleBackgroundMask.layer.shadowOpacity = 1
        circleBackgroundMask.layer.position = CGPoint(x: 0, y: 52)
        circleBackgroundMask.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        circleBackgroundMask.layer.masksToBounds = false
        circleBackgroundMask.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        circleBackgroundMask.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        circleBackgroundMask.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        circleBackgroundMask.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        circleBackgroundMask.shapeLayer.miterLimit = 4
        circleBackgroundMask.shapeLayer.lineDashPattern = []
        circleBackgroundMask.shapeLayer.lineDashPhase = 0
        circleBackgroundMask.shapeLayer.lineWidth = 0.25
        circleBackgroundMask.shapeLayer.path = CGPathCreateWithSVGString("M13,26c7.15,0,13,-5.85,13,-13 0,-7.15,-5.85,-13,-13,-13 -7.15,0,-13,5.85,-13,13 0,7.15,5.85,13,13,13zM13,26")!

    }

    private func createCheckForeground() {
        checkForeground = ShapeView(frame: CGRect(x: 19, y: 35, width: 11.16, height: 8.12))
        checkForeground.backgroundColor = UIColor.clear
        checkForeground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkForeground.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        checkForeground.transform = checkForeground.transform.scaledBy(x: 1, y: -1)
        checkForeground.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkForeground.layer.borderColor = UIColor.clear.cgColor
        checkForeground.layer.shadowColor = UIColor.clear.cgColor
        checkForeground.layer.shadowOpacity = 1
        checkForeground.layer.position = CGPoint(x: 19, y: 35)
        checkForeground.layer.bounds = CGRect(x: 0, y: 0, width: 11.16, height: 8.12)
        checkForeground.layer.masksToBounds = false
        checkForeground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        checkForeground.shapeLayer.strokeColor = UIColor.white.cgColor
        checkForeground.shapeLayer.fillColor = nil
        checkForeground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        checkForeground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        checkForeground.shapeLayer.miterLimit = 4
        checkForeground.shapeLayer.lineDashPattern = []
        checkForeground.shapeLayer.lineDashPhase = 0
        checkForeground.shapeLayer.lineWidth = 3
        checkForeground.shapeLayer.path = CGPathCreateWithSVGString("M0,0l7,8.12 4.16,-3.674")!

    }

    private func createBurst11() {
        burst11 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst11.backgroundColor = UIColor.clear
        burst11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst11.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst11.layer.borderColor = UIColor.clear.cgColor
        burst11.layer.shadowColor = UIColor.clear.cgColor
        burst11.layer.shadowOpacity = 1
        burst11.layer.position = CGPoint(x: 0, y: 0)
        burst11.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst11.layer.masksToBounds = false
        burst11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst11.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst11.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst11.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst11.shapeLayer.miterLimit = 4
        burst11.shapeLayer.lineDashPattern = []
        burst11.shapeLayer.lineDashPhase = 0
        burst11.shapeLayer.lineWidth = 1
        burst11.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst10() {
        burst10 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst10.backgroundColor = UIColor.clear
        burst10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst10.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst10.layer.borderColor = UIColor.clear.cgColor
        burst10.layer.shadowColor = UIColor.clear.cgColor
        burst10.layer.shadowOpacity = 1
        burst10.layer.position = CGPoint(x: 0, y: 0)
        burst10.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst10.layer.masksToBounds = false
        burst10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst10.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst10.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst10.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst10.shapeLayer.miterLimit = 4
        burst10.shapeLayer.lineDashPattern = []
        burst10.shapeLayer.lineDashPhase = 0
        burst10.shapeLayer.lineWidth = 1
        burst10.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst9() {
        burst9 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst9.backgroundColor = UIColor.clear
        burst9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst9.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst9.layer.borderColor = UIColor.clear.cgColor
        burst9.layer.shadowColor = UIColor.clear.cgColor
        burst9.layer.shadowOpacity = 1
        burst9.layer.position = CGPoint(x: 0, y: 0)
        burst9.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst9.layer.masksToBounds = false
        burst9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst9.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst9.shapeLayer.fillColor = nil
        burst9.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst9.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst9.shapeLayer.miterLimit = 4
        burst9.shapeLayer.lineDashPattern = []
        burst9.shapeLayer.lineDashPhase = 0
        burst9.shapeLayer.lineWidth = 1
        burst9.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst8() {
        burst8 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst8.backgroundColor = UIColor.clear
        burst8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst8.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst8.layer.borderColor = UIColor.clear.cgColor
        burst8.layer.shadowColor = UIColor.clear.cgColor
        burst8.layer.shadowOpacity = 1
        burst8.layer.position = CGPoint(x: 0, y: 0)
        burst8.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst8.layer.masksToBounds = false
        burst8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst8.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst8.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst8.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst8.shapeLayer.miterLimit = 4
        burst8.shapeLayer.lineDashPattern = []
        burst8.shapeLayer.lineDashPhase = 0
        burst8.shapeLayer.lineWidth = 1
        burst8.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst7() {
        burst7 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst7.backgroundColor = UIColor.clear
        burst7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst7.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst7.layer.borderColor = UIColor.clear.cgColor
        burst7.layer.shadowColor = UIColor.clear.cgColor
        burst7.layer.shadowOpacity = 1
        burst7.layer.position = CGPoint(x: 0, y: 0)
        burst7.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst7.layer.masksToBounds = false
        burst7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst7.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst7.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst7.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst7.shapeLayer.miterLimit = 4
        burst7.shapeLayer.lineDashPattern = []
        burst7.shapeLayer.lineDashPhase = 0
        burst7.shapeLayer.lineWidth = 1
        burst7.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst6() {
        burst6 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst6.backgroundColor = UIColor.clear
        burst6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst6.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst6.layer.borderColor = UIColor.clear.cgColor
        burst6.layer.shadowColor = UIColor.clear.cgColor
        burst6.layer.shadowOpacity = 1
        burst6.layer.position = CGPoint(x: 0, y: 0)
        burst6.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst6.layer.masksToBounds = false
        burst6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst6.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst6.shapeLayer.fillColor = nil
        burst6.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst6.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst6.shapeLayer.miterLimit = 4
        burst6.shapeLayer.lineDashPattern = []
        burst6.shapeLayer.lineDashPhase = 0
        burst6.shapeLayer.lineWidth = 1
        burst6.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst5() {
        burst5 = ShapeView(frame: CGRect(x: 0, y: 0, width: 1.99, height: 1.99))
        burst5.backgroundColor = UIColor.clear
        burst5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst5.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst5.layer.borderColor = UIColor.clear.cgColor
        burst5.layer.shadowColor = UIColor.clear.cgColor
        burst5.layer.shadowOpacity = 1
        burst5.layer.position = CGPoint(x: 0, y: 0)
        burst5.layer.bounds = CGRect(x: 0, y: 0, width: 1.99, height: 1.99)
        burst5.layer.masksToBounds = false
        burst5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst5.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst5.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst5.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst5.shapeLayer.miterLimit = 4
        burst5.shapeLayer.lineDashPattern = []
        burst5.shapeLayer.lineDashPhase = 0
        burst5.shapeLayer.lineWidth = 1
        burst5.shapeLayer.path = CGPathCreateWithSVGString("M0.995,1.99c0.547,0,0.995,-0.448,0.995,-0.995 0,-0.547,-0.448,-0.995,-0.995,-0.995 -0.547,0,-0.995,0.448,-0.995,0.995 0,0.547,0.448,0.995,0.995,0.995zM0.995,1.99")!

    }

    private func createBurst4() {
        burst4 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst4.backgroundColor = UIColor.clear
        burst4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst4.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst4.layer.borderColor = UIColor.clear.cgColor
        burst4.layer.shadowColor = UIColor.clear.cgColor
        burst4.layer.shadowOpacity = 1
        burst4.layer.position = CGPoint(x: 0, y: 0)
        burst4.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst4.layer.masksToBounds = false
        burst4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst4.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst4.shapeLayer.fillColor = nil
        burst4.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst4.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst4.shapeLayer.miterLimit = 4
        burst4.shapeLayer.lineDashPattern = []
        burst4.shapeLayer.lineDashPhase = 0
        burst4.shapeLayer.lineWidth = 1
        burst4.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst3() {
        burst3 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst3.backgroundColor = UIColor.clear
        burst3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst3.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst3.layer.borderColor = UIColor.clear.cgColor
        burst3.layer.shadowColor = UIColor.clear.cgColor
        burst3.layer.shadowOpacity = 1
        burst3.layer.position = CGPoint(x: 0, y: 0)
        burst3.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst3.layer.masksToBounds = false
        burst3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst3.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst3.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst3.shapeLayer.miterLimit = 4
        burst3.shapeLayer.lineDashPattern = []
        burst3.shapeLayer.lineDashPhase = 0
        burst3.shapeLayer.lineWidth = 1
        burst3.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst2() {
        burst2 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst2.backgroundColor = UIColor.clear
        burst2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst2.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst2.layer.borderColor = UIColor.clear.cgColor
        burst2.layer.shadowColor = UIColor.clear.cgColor
        burst2.layer.shadowOpacity = 1
        burst2.layer.position = CGPoint(x: 0, y: 0)
        burst2.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst2.layer.masksToBounds = false
        burst2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst2.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst2.shapeLayer.fillColor = nil
        burst2.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst2.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst2.shapeLayer.miterLimit = 4
        burst2.shapeLayer.lineDashPattern = []
        burst2.shapeLayer.lineDashPhase = 0
        burst2.shapeLayer.lineWidth = 1
        burst2.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst1() {
        burst1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst1.backgroundColor = UIColor.clear
        burst1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst1.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst1.layer.borderColor = UIColor.clear.cgColor
        burst1.layer.shadowColor = UIColor.clear.cgColor
        burst1.layer.shadowOpacity = 1
        burst1.layer.position = CGPoint(x: 0, y: 0)
        burst1.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst1.layer.masksToBounds = false
        burst1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst1.shapeLayer.fillColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst1.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst1.shapeLayer.miterLimit = 4
        burst1.shapeLayer.lineDashPattern = []
        burst1.shapeLayer.lineDashPhase = 0
        burst1.shapeLayer.lineWidth = 1
        burst1.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func createBurst0() {
        burst0 = ShapeView(frame: CGRect(x: 0, y: 0, width: 2, height: 2))
        burst0.backgroundColor = UIColor.clear
        burst0.layer.anchorPoint = CGPoint(x: 0, y: 0)
        burst0.layer.shadowOffset = CGSize(width: 0, height: 0)
        burst0.layer.borderColor = UIColor.clear.cgColor
        burst0.layer.shadowColor = UIColor.clear.cgColor
        burst0.layer.shadowOpacity = 1
        burst0.layer.position = CGPoint(x: 0, y: 0)
        burst0.layer.bounds = CGRect(x: 0, y: 0, width: 2, height: 2)
        burst0.layer.masksToBounds = false
        burst0.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        burst0.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        burst0.shapeLayer.fillColor = nil
        burst0.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        burst0.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        burst0.shapeLayer.miterLimit = 4
        burst0.shapeLayer.lineDashPattern = []
        burst0.shapeLayer.lineDashPhase = 0
        burst0.shapeLayer.lineWidth = 1
        burst0.shapeLayer.path = CGPathCreateWithSVGString("M1,2c0.55,0,1,-0.45,1,-1 0,-0.55,-0.45,-1,-1,-1 -0.55,0,-1,0.45,-1,1 0,0.55,0.45,1,1,1zM1,2")!

    }

    private func addSubviews() {
        burstGroup.addSubview(burst11)
        burstGroup.addSubview(burst10)
        burstGroup.addSubview(burst9)
        burstGroup.addSubview(burst8)
        burstGroup.addSubview(burst7)
        burstGroup.addSubview(burst6)
        burstGroup.addSubview(burst5)
        burstGroup.addSubview(burst4)
        burstGroup.addSubview(burst3)
        burstGroup.addSubview(burst2)
        burstGroup.addSubview(burst1)
        burstGroup.addSubview(burst0)
        circleBackground_1.addSubview(circleBackgroundMask)
        circleBackground_1.addSubview(checkForeground)
        checkGroup.addSubview(circleBackground_1)
        addSubview(burstGroup)
        addSubview(checkGroup)
        addSubview(circleBackground)
    }
}
