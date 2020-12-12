// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import Foundation
import UIKit

class ToggleButton: UIButton {
    weak var delegate: ToggleButtonDelegate?

    public var forward: Timeline? {
        return nil
    }

    public var reverse: Timeline? {
        return nil
    }

    public func createView() -> UIView {
        return UIView(frame: CGRect.null)
    }

    public private(set) var view: UIView!


    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        setupView()
        addTarget(self, action: #selector(toggle), for: .touchUpInside)
    }

    private func setupView() {
        view = createView()
        addSubview(view)
    }

    @objc
    func toggle() {
        if isSelected {
            reverse?.play()
        } else {
            forward?.play()
        }
        super.isSelected = !isSelected
        delegate?.didToggle(sender: self)
    }

    override var isSelected: Bool {
        get {
            return super.isSelected
        }

        set {
            if newValue {
                _ = reverse
            } else {
                _ = forward
            }
            super.isSelected = newValue
        }
    }
}

protocol ToggleButtonDelegate: class {
    func didToggle(sender: ToggleButton)
}
