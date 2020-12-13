// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class DashingButton: ToggleButton {
    private lazy var dashing: DashingView = {
        let startView = DashingView(frame: .zero)
        startView.scale(to: frame.size)
        //Since we use scaling, the startView must not clip to bounds 
        startView.clipsToBounds = false
        //Let the button do the clipping
        clipsToBounds = false
        return startView
    }()

    override var forward: Timeline? {
        return DashingTimeline(view: dashing, duration: 0.66)
    }

    override var reverse: Timeline? {
        return DashingTimeline(view: dashing, duration: 0.66).reversed
    }

    override func createView() -> UIView {
        return dashing
    }
}
