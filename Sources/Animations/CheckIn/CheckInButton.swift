// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class CheckInButton: ToggleButton {
    private lazy var checkIn: CheckInView = {
        let startView = CheckInView(frame: .zero)
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
        return CheckInTimeline(view: checkIn, duration: 1)
    }

    override var reverse: Timeline? {
        return CheckInTimeline(view: checkIn, duration: 1).reversed
    }

    override func createView() -> UIView {
        return checkIn
    }
}
