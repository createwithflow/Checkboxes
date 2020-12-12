// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class AbbaciView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var group: UIView!
    public var border: ShapeView!
    public var maskShape: ShapeView!
    public var check0: ShapeView!
    public var check1: ShapeView!
    public var check2: ShapeView!
    public var check3: ShapeView!
    public var check4: ShapeView!
    public var check5: ShapeView!
    public var check6: ShapeView!
    public var check7: ShapeView!
    public var check8: ShapeView!
    public var check9: ShapeView!
    public var check10: ShapeView!

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
            createBorder()
            createMaskShape()
            createCheck0()
            createCheck1()
            createCheck2()
            createCheck3()
            createCheck4()
            createCheck5()
            createCheck6()
            createCheck7()
            createCheck8()
            createCheck9()
            createCheck10()
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
        border.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        border.shapeLayer.fillColor = nil
        border.shapeLayer.miterLimit = 4
        border.shapeLayer.lineDashPattern = []
        border.shapeLayer.lineDashPhase = 0
        border.shapeLayer.lineWidth = 3
        border.shapeLayer.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!

    }

    private func createMaskShape() {
        maskShape = ShapeView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
        maskShape.backgroundColor = UIColor.clear
        maskShape.layer.anchorPoint = CGPoint(x: 0, y: 0)
        maskShape.layer.shadowOffset = CGSize(width: 0, height: 0)
        maskShape.layer.borderColor = UIColor.clear.cgColor
        maskShape.layer.shadowColor = UIColor.clear.cgColor
        maskShape.layer.shadowOpacity = 1
        maskShape.layer.position = CGPoint(x: 0, y: 0)
        maskShape.layer.bounds = CGRect(x: 0, y: 0, width: 26, height: 26)
        maskShape.layer.masksToBounds = false
        let maskShapeMask = CAShapeLayer()
        maskShapeMask.path = CGPathCreateWithSVGString("M0,4c-0,-2.194,1.806,-4,4,-4l18,0c2.194,0,4,1.806,4,4l0,18c0,2.194,-1.806,4,-4,4l-18,0c-2.194,0,-4,-1.806,-4,-4s0,0,0,0l0,-18zM0,4")!
        maskShape.layer.mask = maskShapeMask
    }

    private func createCheck0() {
        check0 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check0.backgroundColor = UIColor.clear
        check0.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check0.layer.shadowOffset = CGSize(width: 0, height: 0)
        check0.layer.borderColor = UIColor.clear.cgColor
        check0.layer.shadowColor = UIColor.clear.cgColor
        check0.layer.shadowOpacity = 1
        check0.layer.position = CGPoint(x: 0.5, y: -1)
        check0.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check0.layer.masksToBounds = false
        check0.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check0.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check0.shapeLayer.fillColor = nil
        check0.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check0.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check0.shapeLayer.strokeStart = 1
        check0.shapeLayer.miterLimit = 4
        check0.shapeLayer.lineDashPattern = []
        check0.shapeLayer.lineDashPhase = 0
        check0.shapeLayer.lineWidth = 3
        check0.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck1() {
        check1 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check1.backgroundColor = UIColor.clear
        check1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check1.layer.shadowOffset = CGSize(width: 0, height: 0)
        check1.layer.borderColor = UIColor.clear.cgColor
        check1.layer.shadowColor = UIColor.clear.cgColor
        check1.layer.shadowOpacity = 1
        check1.layer.position = CGPoint(x: 0.5, y: -1)
        check1.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check1.layer.masksToBounds = false
        check1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check1.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check1.shapeLayer.fillColor = nil
        check1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check1.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check1.shapeLayer.strokeStart = 1
        check1.shapeLayer.miterLimit = 4
        check1.shapeLayer.lineDashPattern = []
        check1.shapeLayer.lineDashPhase = 0
        check1.shapeLayer.lineWidth = 3
        check1.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck2() {
        check2 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check2.backgroundColor = UIColor.clear
        check2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check2.layer.shadowOffset = CGSize(width: 0, height: 0)
        check2.layer.borderColor = UIColor.clear.cgColor
        check2.layer.shadowColor = UIColor.clear.cgColor
        check2.layer.shadowOpacity = 1
        check2.layer.position = CGPoint(x: 0.5, y: -1)
        check2.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check2.layer.masksToBounds = false
        check2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check2.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check2.shapeLayer.fillColor = nil
        check2.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check2.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check2.shapeLayer.strokeStart = 1
        check2.shapeLayer.miterLimit = 4
        check2.shapeLayer.lineDashPattern = []
        check2.shapeLayer.lineDashPhase = 0
        check2.shapeLayer.lineWidth = 3
        check2.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck3() {
        check3 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check3.backgroundColor = UIColor.clear
        check3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check3.layer.shadowOffset = CGSize(width: 0, height: 0)
        check3.layer.borderColor = UIColor.clear.cgColor
        check3.layer.shadowColor = UIColor.clear.cgColor
        check3.layer.shadowOpacity = 1
        check3.layer.position = CGPoint(x: 0.5, y: -1)
        check3.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check3.layer.masksToBounds = false
        check3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check3.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check3.shapeLayer.fillColor = nil
        check3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check3.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check3.shapeLayer.strokeStart = 1
        check3.shapeLayer.miterLimit = 4
        check3.shapeLayer.lineDashPattern = []
        check3.shapeLayer.lineDashPhase = 0
        check3.shapeLayer.lineWidth = 3
        check3.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck4() {
        check4 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check4.backgroundColor = UIColor.clear
        check4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check4.layer.shadowOffset = CGSize(width: 0, height: 0)
        check4.layer.borderColor = UIColor.clear.cgColor
        check4.layer.shadowColor = UIColor.clear.cgColor
        check4.layer.shadowOpacity = 1
        check4.layer.position = CGPoint(x: 0.5, y: -1)
        check4.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check4.layer.masksToBounds = false
        check4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check4.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check4.shapeLayer.fillColor = nil
        check4.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check4.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check4.shapeLayer.strokeStart = 1
        check4.shapeLayer.miterLimit = 4
        check4.shapeLayer.lineDashPattern = []
        check4.shapeLayer.lineDashPhase = 0
        check4.shapeLayer.lineWidth = 3
        check4.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck5() {
        check5 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check5.backgroundColor = UIColor.clear
        check5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check5.layer.shadowOffset = CGSize(width: 0, height: 0)
        check5.layer.borderColor = UIColor.clear.cgColor
        check5.layer.shadowColor = UIColor.clear.cgColor
        check5.layer.shadowOpacity = 1
        check5.layer.position = CGPoint(x: 0.5, y: -1)
        check5.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check5.layer.masksToBounds = false
        check5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check5.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check5.shapeLayer.fillColor = nil
        check5.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check5.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check5.shapeLayer.strokeStart = 1
        check5.shapeLayer.miterLimit = 4
        check5.shapeLayer.lineDashPattern = []
        check5.shapeLayer.lineDashPhase = 0
        check5.shapeLayer.lineWidth = 3
        check5.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck6() {
        check6 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check6.backgroundColor = UIColor.clear
        check6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check6.layer.shadowOffset = CGSize(width: 0, height: 0)
        check6.layer.borderColor = UIColor.clear.cgColor
        check6.layer.shadowColor = UIColor.clear.cgColor
        check6.layer.shadowOpacity = 1
        check6.layer.position = CGPoint(x: 0.5, y: -1)
        check6.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check6.layer.masksToBounds = false
        check6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check6.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check6.shapeLayer.fillColor = nil
        check6.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check6.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check6.shapeLayer.strokeStart = 1
        check6.shapeLayer.miterLimit = 4
        check6.shapeLayer.lineDashPattern = []
        check6.shapeLayer.lineDashPhase = 0
        check6.shapeLayer.lineWidth = 3
        check6.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck7() {
        check7 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check7.backgroundColor = UIColor.clear
        check7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check7.layer.shadowOffset = CGSize(width: 0, height: 0)
        check7.layer.borderColor = UIColor.clear.cgColor
        check7.layer.shadowColor = UIColor.clear.cgColor
        check7.layer.shadowOpacity = 1
        check7.layer.position = CGPoint(x: 0.5, y: -1)
        check7.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check7.layer.masksToBounds = false
        check7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check7.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check7.shapeLayer.fillColor = nil
        check7.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check7.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check7.shapeLayer.strokeStart = 1
        check7.shapeLayer.miterLimit = 4
        check7.shapeLayer.lineDashPattern = []
        check7.shapeLayer.lineDashPhase = 0
        check7.shapeLayer.lineWidth = 3
        check7.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck8() {
        check8 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check8.backgroundColor = UIColor.clear
        check8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check8.layer.shadowOffset = CGSize(width: 0, height: 0)
        check8.layer.borderColor = UIColor.clear.cgColor
        check8.layer.shadowColor = UIColor.clear.cgColor
        check8.layer.shadowOpacity = 1
        check8.layer.position = CGPoint(x: 0.5, y: -1)
        check8.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check8.layer.masksToBounds = false
        check8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check8.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check8.shapeLayer.fillColor = nil
        check8.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check8.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check8.shapeLayer.strokeStart = 1
        check8.shapeLayer.miterLimit = 4
        check8.shapeLayer.lineDashPattern = []
        check8.shapeLayer.lineDashPhase = 0
        check8.shapeLayer.lineWidth = 3
        check8.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck9() {
        check9 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check9.backgroundColor = UIColor.clear
        check9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check9.layer.shadowOffset = CGSize(width: 0, height: 0)
        check9.layer.borderColor = UIColor.clear.cgColor
        check9.layer.shadowColor = UIColor.clear.cgColor
        check9.layer.shadowOpacity = 1
        check9.layer.position = CGPoint(x: 0.5, y: -1)
        check9.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check9.layer.masksToBounds = false
        check9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check9.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check9.shapeLayer.fillColor = nil
        check9.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check9.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check9.shapeLayer.strokeStart = 1
        check9.shapeLayer.miterLimit = 4
        check9.shapeLayer.lineDashPattern = []
        check9.shapeLayer.lineDashPhase = 0
        check9.shapeLayer.lineWidth = 3
        check9.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func createCheck10() {
        check10 = ShapeView(frame: CGRect(x: 0.5, y: -1, width: 29, height: 18.5))
        check10.backgroundColor = UIColor.clear
        check10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check10.layer.shadowOffset = CGSize(width: 0, height: 0)
        check10.layer.borderColor = UIColor.clear.cgColor
        check10.layer.shadowColor = UIColor.clear.cgColor
        check10.layer.shadowOpacity = 1
        check10.layer.position = CGPoint(x: 0.5, y: -1)
        check10.layer.bounds = CGRect(x: 0, y: 0, width: 29, height: 18.5)
        check10.layer.masksToBounds = false
        check10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check10.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        check10.shapeLayer.fillColor = nil
        check10.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        check10.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        check10.shapeLayer.strokeStart = 1
        check10.shapeLayer.miterLimit = 4
        check10.shapeLayer.lineDashPattern = []
        check10.shapeLayer.lineDashPhase = 0
        check10.shapeLayer.lineWidth = 3
        check10.shapeLayer.path = CGPathCreateWithSVGString("M0,8l10.5,10.5 18.5,-18.5")!

    }

    private func addSubviews() {
        maskShape.addSubview(check0)
        maskShape.addSubview(check1)
        maskShape.addSubview(check2)
        maskShape.addSubview(check3)
        maskShape.addSubview(check4)
        maskShape.addSubview(check5)
        maskShape.addSubview(check6)
        maskShape.addSubview(check7)
        maskShape.addSubview(check8)
        maskShape.addSubview(check9)
        maskShape.addSubview(check10)
        group.addSubview(maskShape)
        addSubview(group)
        addSubview(border)
    }
}
