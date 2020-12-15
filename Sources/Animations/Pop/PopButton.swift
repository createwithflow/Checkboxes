// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class PopButton: ToggleButton {
    private lazy var pop: PopView = {
        let startView = PopView(frame: .zero)
        startView.scale(to: frame.size)
        //Since we use scaling, the startView must not clip to bounds 
        startView.clipsToBounds = false
        //Let the button do the clipping
        clipsToBounds = false
        //Since we are scaling, set the background color of the button, and clear the backgroundColor of the startview
        backgroundColor = startView.backgroundColor
        startView.backgroundColor = .clear
        return startView
    }()

    override var forward: Timeline? {
        return PopTimeline(view: pop, duration: 0.5)
    }

    override var reverse: Timeline? {
        return PopReverseTimeline(view: pop, duration: 0.5)
    }

    override func createView() -> UIView {
        return pop
    }
}
