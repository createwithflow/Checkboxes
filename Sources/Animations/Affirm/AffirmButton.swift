// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class AffirmButton: ToggleButton {
    private lazy var affirm: AffirmView = {
        let startView = AffirmView(frame: .zero)
        startView.scale(to: frame.size)
        //Since we use scaling, the startView must not clip to bounds 
        startView.clipsToBounds = false
        //Let the button do the clipping
        clipsToBounds = false
        return startView
    }()

    override var forward: Timeline? {
        return AffirmTimeline(view: affirm, duration: 0.5)
    }

    override var reverse: Timeline? {
        return AffirmTimeline(view: affirm, duration: 0.5).reversed
    }

    override func createView() -> UIView {
        return affirm
    }
}
