// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class AmbianceView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var background: ShapeView!
    public var group: UIView!
    public var dots: UIView!
    public var check: ShapeView!
    public var d2: ShapeView!
    public var d5: ShapeView!
    public var d11: ShapeView!
    public var d8: ShapeView!
    public var d3: ShapeView!
    public var d6: ShapeView!
    public var d0: ShapeView!
    public var d9: ShapeView!
    public var d1: ShapeView!
    public var d4: ShapeView!
    public var d10: ShapeView!
    public var d7: ShapeView!
    public var checkOutline: ShapeView!
    public var gradient: ShapeView!

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
            createBackground()
            createGroup()
            createDots()
            createCheck()
            createD2()
            createD5()
            createD11()
            createD8()
            createD3()
            createD6()
            createD0()
            createD9()
            createD1()
            createD4()
            createD10()
            createD7()
            createCheckOutline()
            createGradient()
        }
    }

    private func createBackground() {
        background = ShapeView(frame: CGRect(x: 4, y: 4, width: 24, height: 24))
        background.backgroundColor = UIColor.clear
        background.layer.anchorPoint = CGPoint(x: 0, y: 0)
        background.layer.shadowOffset = CGSize(width: 0, height: 0)
        background.layer.borderColor = UIColor.clear.cgColor
        background.layer.shadowColor = UIColor.clear.cgColor
        background.layer.shadowOpacity = 1
        background.layer.position = CGPoint(x: 4, y: 4)
        background.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        background.layer.masksToBounds = false
        background.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        background.shapeLayer.strokeColor = UIColor(red: 0.765, green: 0.769, blue: 0.773, alpha: 1).cgColor
        background.shapeLayer.fillColor = UIColor(red: 0.463, green: 0.275, blue: 0.988, alpha: 0).cgColor
        background.shapeLayer.miterLimit = 4
        background.shapeLayer.lineDashPattern = []
        background.shapeLayer.lineDashPhase = 0
        background.shapeLayer.lineWidth = 1
        background.shapeLayer.path = CGPathCreateWithSVGString("M12,24c6.6,0,12,-5.4,12,-12 0,-6.6,-5.4,-12,-12,-12 -6.6,0,-12,5.4,-12,12 0,6.6,5.4,12,12,12zM12,24")!

    }

    private func createGroup() {
        group = UIView(frame: CGRect(x: 8.59, y: 10.59, width: 15.33, height: 11.33))
        group.backgroundColor = UIColor.clear
        group.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group.layer.shadowOffset = CGSize(width: 0, height: 0)
        group.layer.borderWidth = 1
        group.layer.borderColor = UIColor.clear.cgColor
        group.layer.shadowColor = UIColor.clear.cgColor
        group.layer.shadowOpacity = 1
        group.layer.position = CGPoint(x: 8.59, y: 10.59)
        group.layer.bounds = CGRect(x: 0, y: 0, width: 15.33, height: 11.33)
        group.layer.masksToBounds = false
    }

    private func createDots() {
        dots = UIView(frame: CGRect(x: 16, y: 16, width: 36, height: 36))
        dots.backgroundColor = UIColor.clear
        dots.alpha = 0
        dots.layer.shadowOffset = CGSize(width: 0, height: 0)
        dots.layer.borderWidth = 1
        dots.layer.borderColor = UIColor.clear.cgColor
        dots.layer.shadowColor = UIColor.clear.cgColor
        dots.layer.shadowOpacity = 1
        dots.layer.position = CGPoint(x: 16, y: 16)
        dots.layer.bounds = CGRect(x: 0, y: 0, width: 36, height: 36)
        dots.layer.masksToBounds = false
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
        check.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "square")
        check.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check.shapeLayer.miterLimit = 4
        check.shapeLayer.lineDashPattern = []
        check.shapeLayer.lineDashPhase = 0
        check.shapeLayer.lineWidth = 3
        check.shapeLayer.path = CGPathCreateWithSVGString("M0,4.5l4,4 8.5,-8.5")!

    }

    private func createD2() {
        d2 = ShapeView(frame: CGRect(x: 8, y: 2.14, width: 4, height: 4))
        d2.backgroundColor = UIColor.clear
        d2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d2.layer.shadowOffset = CGSize(width: 0, height: 0)
        d2.layer.borderColor = UIColor.clear.cgColor
        d2.layer.shadowColor = UIColor.clear.cgColor
        d2.layer.shadowOpacity = 1
        d2.layer.position = CGPoint(x: 8, y: 2.14)
        d2.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d2.layer.masksToBounds = false
        d2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d2.shapeLayer.fillColor = UIColor(red: 0.878, green: 0.722, blue: 0.243, alpha: 1).cgColor
        d2.shapeLayer.miterLimit = 4
        d2.shapeLayer.lineDashPattern = []
        d2.shapeLayer.lineDashPhase = 0
        d2.shapeLayer.lineWidth = 1
        d2.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD5() {
        d5 = ShapeView(frame: CGRect(x: 29.86, y: 8, width: 4, height: 4))
        d5.backgroundColor = UIColor.clear
        d5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d5.layer.shadowOffset = CGSize(width: 0, height: 0)
        d5.layer.borderColor = UIColor.clear.cgColor
        d5.layer.shadowColor = UIColor.clear.cgColor
        d5.layer.shadowOpacity = 1
        d5.layer.position = CGPoint(x: 29.86, y: 8)
        d5.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d5.layer.masksToBounds = false
        d5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d5.shapeLayer.fillColor = UIColor(red: 0.694, green: 0.776, blue: 0.412, alpha: 1).cgColor
        d5.shapeLayer.miterLimit = 4
        d5.shapeLayer.lineDashPattern = []
        d5.shapeLayer.lineDashPhase = 0
        d5.shapeLayer.lineWidth = 1
        d5.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD11() {
        d11 = ShapeView(frame: CGRect(x: 2.14, y: 24, width: 4, height: 4))
        d11.backgroundColor = UIColor.clear
        d11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d11.layer.shadowOffset = CGSize(width: 0, height: 0)
        d11.layer.borderColor = UIColor.clear.cgColor
        d11.layer.shadowColor = UIColor.clear.cgColor
        d11.layer.shadowOpacity = 1
        d11.layer.position = CGPoint(x: 2.14, y: 24)
        d11.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d11.layer.masksToBounds = false
        d11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d11.shapeLayer.fillColor = UIColor(red: 0.333, green: 0.886, blue: 0.745, alpha: 1).cgColor
        d11.shapeLayer.miterLimit = 4
        d11.shapeLayer.lineDashPattern = []
        d11.shapeLayer.lineDashPhase = 0
        d11.shapeLayer.lineWidth = 1
        d11.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD8() {
        d8 = ShapeView(frame: CGRect(x: 24, y: 29.86, width: 4, height: 4))
        d8.backgroundColor = UIColor.clear
        d8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d8.layer.shadowOffset = CGSize(width: 0, height: 0)
        d8.layer.borderColor = UIColor.clear.cgColor
        d8.layer.shadowColor = UIColor.clear.cgColor
        d8.layer.shadowOpacity = 1
        d8.layer.position = CGPoint(x: 24, y: 29.86)
        d8.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d8.layer.masksToBounds = false
        d8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d8.shapeLayer.fillColor = UIColor(red: 0.514, green: 0.831, blue: 0.576, alpha: 1).cgColor
        d8.shapeLayer.miterLimit = 4
        d8.shapeLayer.lineDashPattern = []
        d8.shapeLayer.lineDashPhase = 0
        d8.shapeLayer.lineWidth = 1
        d8.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD3() {
        d3 = ShapeView(frame: CGRect(x: 16, y: 0, width: 4, height: 4))
        d3.backgroundColor = UIColor.clear
        d3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d3.layer.shadowOffset = CGSize(width: 0, height: 0)
        d3.layer.borderColor = UIColor.clear.cgColor
        d3.layer.shadowColor = UIColor.clear.cgColor
        d3.layer.shadowOpacity = 1
        d3.layer.position = CGPoint(x: 16, y: 0)
        d3.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d3.layer.masksToBounds = false
        d3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d3.shapeLayer.fillColor = UIColor(red: 0.82, green: 0.737, blue: 0.294, alpha: 1).cgColor
        d3.shapeLayer.miterLimit = 4
        d3.shapeLayer.lineDashPattern = []
        d3.shapeLayer.lineDashPhase = 0
        d3.shapeLayer.lineWidth = 1
        d3.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD6() {
        d6 = ShapeView(frame: CGRect(x: 32, y: 16, width: 4, height: 4))
        d6.backgroundColor = UIColor.clear
        d6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d6.layer.shadowOffset = CGSize(width: 0, height: 0)
        d6.layer.borderColor = UIColor.clear.cgColor
        d6.layer.shadowColor = UIColor.clear.cgColor
        d6.layer.shadowOpacity = 1
        d6.layer.position = CGPoint(x: 32, y: 16)
        d6.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d6.layer.masksToBounds = false
        d6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d6.shapeLayer.fillColor = UIColor(red: 0.635, green: 0.796, blue: 0.467, alpha: 1).cgColor
        d6.shapeLayer.miterLimit = 4
        d6.shapeLayer.lineDashPattern = []
        d6.shapeLayer.lineDashPhase = 0
        d6.shapeLayer.lineWidth = 1
        d6.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD0() {
        d0 = ShapeView(frame: CGRect(x: 0, y: 16, width: 4, height: 4))
        d0.backgroundColor = UIColor.clear
        d0.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d0.layer.shadowOffset = CGSize(width: 0, height: 0)
        d0.layer.borderColor = UIColor.clear.cgColor
        d0.layer.shadowColor = UIColor.clear.cgColor
        d0.layer.shadowOpacity = 1
        d0.layer.position = CGPoint(x: 0, y: 16)
        d0.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d0.layer.masksToBounds = false
        d0.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d0.shapeLayer.fillColor = UIColor(red: 1, green: 0.682, blue: 0.129, alpha: 1).cgColor
        d0.shapeLayer.miterLimit = 4
        d0.shapeLayer.lineDashPattern = []
        d0.shapeLayer.lineDashPhase = 0
        d0.shapeLayer.lineWidth = 1
        d0.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD9() {
        d9 = ShapeView(frame: CGRect(x: 16, y: 32, width: 4, height: 4))
        d9.backgroundColor = UIColor.clear
        d9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d9.layer.shadowOffset = CGSize(width: 0, height: 0)
        d9.layer.borderColor = UIColor.clear.cgColor
        d9.layer.shadowColor = UIColor.clear.cgColor
        d9.layer.shadowOpacity = 1
        d9.layer.position = CGPoint(x: 16, y: 32)
        d9.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d9.layer.masksToBounds = false
        d9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d9.shapeLayer.fillColor = UIColor(red: 0.451, green: 0.851, blue: 0.635, alpha: 1).cgColor
        d9.shapeLayer.miterLimit = 4
        d9.shapeLayer.lineDashPattern = []
        d9.shapeLayer.lineDashPhase = 0
        d9.shapeLayer.lineWidth = 1
        d9.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD1() {
        d1 = ShapeView(frame: CGRect(x: 2.14, y: 8, width: 4, height: 4))
        d1.backgroundColor = UIColor.clear
        d1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d1.layer.shadowOffset = CGSize(width: 0, height: 0)
        d1.layer.borderColor = UIColor.clear.cgColor
        d1.layer.shadowColor = UIColor.clear.cgColor
        d1.layer.shadowOpacity = 1
        d1.layer.position = CGPoint(x: 2.14, y: 8)
        d1.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d1.layer.masksToBounds = false
        d1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d1.shapeLayer.fillColor = UIColor(red: 0.941, green: 0.702, blue: 0.18, alpha: 1).cgColor
        d1.shapeLayer.miterLimit = 4
        d1.shapeLayer.lineDashPattern = []
        d1.shapeLayer.lineDashPhase = 0
        d1.shapeLayer.lineWidth = 1
        d1.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD4() {
        d4 = ShapeView(frame: CGRect(x: 24, y: 2.14, width: 4, height: 4))
        d4.backgroundColor = UIColor.clear
        d4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d4.layer.shadowOffset = CGSize(width: 0, height: 0)
        d4.layer.borderColor = UIColor.clear.cgColor
        d4.layer.shadowColor = UIColor.clear.cgColor
        d4.layer.shadowOpacity = 1
        d4.layer.position = CGPoint(x: 24, y: 2.14)
        d4.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d4.layer.masksToBounds = false
        d4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d4.shapeLayer.fillColor = UIColor(red: 0.761, green: 0.757, blue: 0.349, alpha: 1).cgColor
        d4.shapeLayer.miterLimit = 4
        d4.shapeLayer.lineDashPattern = []
        d4.shapeLayer.lineDashPhase = 0
        d4.shapeLayer.lineWidth = 1
        d4.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD10() {
        d10 = ShapeView(frame: CGRect(x: 8, y: 29.86, width: 4, height: 4))
        d10.backgroundColor = UIColor.clear
        d10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d10.layer.shadowOffset = CGSize(width: 0, height: 0)
        d10.layer.borderColor = UIColor.clear.cgColor
        d10.layer.shadowColor = UIColor.clear.cgColor
        d10.layer.shadowOpacity = 1
        d10.layer.position = CGPoint(x: 8, y: 29.86)
        d10.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d10.layer.masksToBounds = false
        d10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d10.shapeLayer.fillColor = UIColor(red: 0.388, green: 0.871, blue: 0.694, alpha: 1).cgColor
        d10.shapeLayer.miterLimit = 4
        d10.shapeLayer.lineDashPattern = []
        d10.shapeLayer.lineDashPhase = 0
        d10.shapeLayer.lineWidth = 1
        d10.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createD7() {
        d7 = ShapeView(frame: CGRect(x: 29.86, y: 24, width: 4, height: 4))
        d7.backgroundColor = UIColor.clear
        d7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        d7.layer.shadowOffset = CGSize(width: 0, height: 0)
        d7.layer.borderColor = UIColor.clear.cgColor
        d7.layer.shadowColor = UIColor.clear.cgColor
        d7.layer.shadowOpacity = 1
        d7.layer.position = CGPoint(x: 29.86, y: 24)
        d7.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
        d7.layer.masksToBounds = false
        d7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        d7.shapeLayer.fillColor = UIColor(red: 0.573, green: 0.812, blue: 0.522, alpha: 1).cgColor
        d7.shapeLayer.miterLimit = 4
        d7.shapeLayer.lineDashPattern = []
        d7.shapeLayer.lineDashPhase = 0
        d7.shapeLayer.lineWidth = 1
        d7.shapeLayer.path = CGPathCreateWithSVGString("M2,4c1.1,0,2,-0.9,2,-2 0,-1.1,-0.9,-2,-2,-2 -1.1,0,-2,0.9,-2,2 0,1.1,0.9,2,2,2zM2,4")!

    }

    private func createCheckOutline() {
        checkOutline = ShapeView(frame: CGRect(x: 0, y: 0, width: 15.33, height: 11.33))
        checkOutline.backgroundColor = UIColor.clear
        checkOutline.layer.anchorPoint = CGPoint(x: 0, y: 0)
        checkOutline.layer.shadowOffset = CGSize(width: 0, height: 0)
        checkOutline.layer.borderColor = UIColor.clear.cgColor
        checkOutline.layer.shadowColor = UIColor.clear.cgColor
        checkOutline.layer.shadowOpacity = 1
        checkOutline.layer.position = CGPoint(x: 0, y: 0)
        checkOutline.layer.bounds = CGRect(x: 0, y: 0, width: 15.33, height: 11.33)
        checkOutline.layer.masksToBounds = false
        let checkOutlineMask = CAShapeLayer()
        checkOutlineMask.path = CGPathCreateWithSVGString("M15.33,1.414l-9.915,9.916 -5.415,-5.415 1.414,-1.414 4,4.001 8.501,-8.501 1.414,1.414 0,0zM15.33,1.414")!
        checkOutline.layer.mask = checkOutlineMask
    }

    private func createGradient() {
        gradient = ShapeView(frame: CGRect(x: -4.59, y: -6.59, width: 24, height: 24))
        gradient.backgroundColor = UIColor.clear
        gradient.layer.anchorPoint = CGPoint(x: 0, y: 0)
        gradient.layer.shadowOffset = CGSize(width: 0, height: 0)
        gradient.layer.borderColor = UIColor.clear.cgColor
        gradient.layer.shadowColor = UIColor.clear.cgColor
        gradient.layer.shadowOpacity = 1
        gradient.layer.position = CGPoint(x: -4.59, y: -6.59)
        gradient.layer.bounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        gradient.layer.masksToBounds = false
        gradient.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        gradient.shapeLayer.fillColor = nil
        gradient.shapeLayer.miterLimit = 4
        gradient.shapeLayer.lineDashPattern = []
        gradient.shapeLayer.lineDashPhase = 0
        gradient.shapeLayer.lineWidth = 1
        gradient.shapeLayer.path = CGPathCreateWithSVGString("M12,24c6.6,0,12,-5.4,12,-12 0,-6.6,-5.4,-12,-12,-12 -6.6,0,-12,5.4,-12,12 0,6.6,5.4,12,12,12zM12,24")!

        let startPoint = CGPoint(x: 0.916667, y: 0.333333)
        let endPoint = CGPoint(x: 0.0625, y: 0.729167)
        let colors = [UIColor(red: 1, green: 0.682, blue: 0.125, alpha: 1).cgColor, UIColor(red: 0.314, green: 0.89, blue: 0.761, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        gradient.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func addSubviews() {
        checkOutline.addSubview(gradient)
        group.addSubview(checkOutline)
        dots.addSubview(d2)
        dots.addSubview(d5)
        dots.addSubview(d11)
        dots.addSubview(d8)
        dots.addSubview(d3)
        dots.addSubview(d6)
        dots.addSubview(d0)
        dots.addSubview(d9)
        dots.addSubview(d1)
        dots.addSubview(d4)
        dots.addSubview(d10)
        dots.addSubview(d7)
        addSubview(background)
        addSubview(group)
        addSubview(dots)
        addSubview(check)
    }
}
