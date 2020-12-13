// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class BurstButton: ToggleButton {
    private lazy var burst: BurstView = {
        let startView = BurstView(frame: .zero)
        startView.scale(to: frame.size)
        //Since we use scaling, the startView must not clip to bounds 
        startView.clipsToBounds = false
        //Let the button do the clipping
        clipsToBounds = false
        return startView
    }()

    override var forward: Timeline? {
        return BurstTimeline(view: burst, duration: 0.75)
    }

    override var reverse: Timeline? {
        return BurstTimeline(view: burst, duration: 0.75).reversed
    }

    override func createView() -> UIView {
        return burst
    }
}
