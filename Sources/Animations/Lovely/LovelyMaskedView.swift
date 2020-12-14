// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class LovelyMaskedView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 32, height: 32)
        public static let backgroundColor = UIColor.white
    }

    public var lovelyBackground: ShapeView!
    public var lovelyGroup: UIView!
    public var lovelyMaskLayer: ShapeView!
    public var lovely: ShapeView!

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
            createLovelyBackground()
            createLovelyGroup()
            createLovelyMaskLayer()
            createLovely()
        }
    }

    private func createLovelyBackground() {
        lovelyBackground = ShapeView(frame: CGRect(x: 8, y: 13, width: 16, height: 7))
        lovelyBackground.backgroundColor = UIColor.clear
        lovelyBackground.layer.anchorPoint = CGPoint(x: 0, y: 0)
        lovelyBackground.layer.shadowOffset = CGSize(width: 0, height: 0)
        lovelyBackground.layer.borderColor = UIColor.clear.cgColor
        lovelyBackground.layer.shadowColor = UIColor.clear.cgColor
        lovelyBackground.layer.shadowOpacity = 1
        lovelyBackground.layer.position = CGPoint(x: 8, y: 13)
        lovelyBackground.layer.bounds = CGRect(x: 0, y: 0, width: 16, height: 7)
        lovelyBackground.layer.masksToBounds = false
        lovelyBackground.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        lovelyBackground.shapeLayer.strokeColor = UIColor(red: 0.89, green: 0.894, blue: 0.898, alpha: 1).cgColor
        lovelyBackground.shapeLayer.fillColor = nil
        lovelyBackground.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        lovelyBackground.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        lovelyBackground.shapeLayer.miterLimit = 4
        lovelyBackground.shapeLayer.lineDashPattern = []
        lovelyBackground.shapeLayer.lineDashPhase = 0
        lovelyBackground.shapeLayer.lineWidth = 15
        lovelyBackground.shapeLayer.path = CGPathCreateWithSVGString("M0,0l8,7 8,-7")!

    }

    private func createLovelyGroup() {
        lovelyGroup = UIView(frame: CGRect(x: 0.5, y: 5.5, width: 31, height: 22))
        lovelyGroup.backgroundColor = UIColor.clear
        lovelyGroup.layer.anchorPoint = CGPoint(x: 0, y: 0)
        lovelyGroup.layer.shadowOffset = CGSize(width: 0, height: 0)
        lovelyGroup.layer.borderWidth = 1
        lovelyGroup.layer.borderColor = UIColor.clear.cgColor
        lovelyGroup.layer.shadowColor = UIColor.clear.cgColor
        lovelyGroup.layer.shadowOpacity = 1
        lovelyGroup.layer.position = CGPoint(x: 0.5, y: 5.5)
        lovelyGroup.layer.bounds = CGRect(x: 0, y: 0, width: 31, height: 22)
        lovelyGroup.layer.masksToBounds = false
    }

    private func createLovelyMaskLayer() {
        lovelyMaskLayer = ShapeView(frame: CGRect(x: 0, y: 0, width: 31, height: 22))
        lovelyMaskLayer.backgroundColor = UIColor.clear
        lovelyMaskLayer.layer.anchorPoint = CGPoint(x: 0, y: 0)
        lovelyMaskLayer.layer.shadowOffset = CGSize(width: 0, height: 0)
        lovelyMaskLayer.layer.borderColor = UIColor.clear.cgColor
        lovelyMaskLayer.layer.shadowColor = UIColor.clear.cgColor
        lovelyMaskLayer.layer.shadowOpacity = 1
        lovelyMaskLayer.layer.position = CGPoint(x: 0, y: 0)
        lovelyMaskLayer.layer.bounds = CGRect(x: 0, y: 0, width: 31, height: 22)
        lovelyMaskLayer.layer.masksToBounds = false
        let lovelyMaskLayerMask = CAShapeLayer()
        lovelyMaskLayerMask.path = CGPathCreateWithSVGString("M1.856,2.561c2.728,-3.117,7.466,-3.433,10.583,-0.706l3.061,2.679 3.061,-2.679c3.117,-2.728,7.855,-2.412,10.583,0.706 2.728,3.117,2.412,7.855,-0.705,10.583l-8,7c-2.828,2.474,-7.05,2.474,-9.878,0l-8,-7c-3.117,-2.728,-3.433,-7.466,-0.706,-10.583l0,0zM1.856,2.561")!
        lovelyMaskLayer.layer.mask = lovelyMaskLayerMask
    }

    private func createLovely() {
        lovely = ShapeView(frame: CGRect(x: -8.5, y: -6.5, width: 48, height: 21))
        lovely.backgroundColor = UIColor.clear
        lovely.layer.anchorPoint = CGPoint(x: 0, y: 0)
        lovely.layer.shadowOffset = CGSize(width: 0, height: 0)
        lovely.layer.borderColor = UIColor.clear.cgColor
        lovely.layer.shadowColor = UIColor.clear.cgColor
        lovely.layer.shadowOpacity = 1
        lovely.layer.position = CGPoint(x: -8.5, y: -6.5)
        lovely.layer.bounds = CGRect(x: 0, y: 0, width: 48, height: 21)
        lovely.layer.masksToBounds = false
        lovely.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        lovely.shapeLayer.strokeColor = UIColor(red: 0.992, green: 0.004, blue: 0.471, alpha: 1).cgColor
        lovely.shapeLayer.fillColor = nil
        lovely.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        lovely.shapeLayer.lineJoin = CAShapeLayerLineJoin(rawValue: "round")
        lovely.shapeLayer.strokeEnd = 0.09
        lovely.shapeLayer.miterLimit = 4
        lovely.shapeLayer.lineDashPattern = []
        lovely.shapeLayer.lineDashPhase = 0
        lovely.shapeLayer.lineWidth = 15
        lovely.shapeLayer.path = CGPathCreateWithSVGString("M0,0l24,21 24,-21")!

    }

    private func addSubviews() {
        lovelyMaskLayer.addSubview(lovely)
        lovelyGroup.addSubview(lovelyMaskLayer)
        addSubview(lovelyBackground)
        addSubview(lovelyGroup)
    }
}
