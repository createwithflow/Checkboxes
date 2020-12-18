// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class ViewController: UIViewController {
    @IBOutlet var button: ToggleButton!
    
    public override func viewDidLoad() {
        view.backgroundColor = button.backgroundColor
    }

    public override var prefersStatusBarHidden: Bool {
        return true
    }
}
