// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class AmbianceButton: ToggleButton {
    private lazy var ambiance: AmbianceView = {
        let startView = AmbianceView(frame: .zero)
        startView.scale(to: frame.size)
        //Since we use scaling, the startView must not clip to bounds 
        startView.clipsToBounds = false
        //Let the button do the clipping
        clipsToBounds = false
        return startView
    }()

    override var forward: Timeline? {
        return AmbianceTimeline(view: ambiance, duration: 0.6)
    }

    override var reverse: Timeline? {
        return AmbianceReverseTimeline(view: ambiance, duration: 0.6)
    }

    override func createView() -> UIView {
        return ambiance
    }
}
