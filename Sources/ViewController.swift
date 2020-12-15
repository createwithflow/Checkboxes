// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class ViewController: UIViewController {
        
    public override func viewDidLoad() {
        guard let checkbox = Checkboxes.create(.alarm) else {
            return
        }
        checkbox.center = view.center
        view.backgroundColor = checkbox.backgroundColor
        view.addSubview(checkbox)
    }

    public override var prefersStatusBarHidden: Bool {
        return true
    }
}
