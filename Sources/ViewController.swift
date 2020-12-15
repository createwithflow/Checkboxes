// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class ViewController: UIViewController {
    
    @IBOutlet var abbaci: AbbaciButton!
    @IBOutlet var affirm: AffirmButton!
    @IBOutlet var alarm: AlarmButton!
    @IBOutlet var allinone: AllinoneButton!
    @IBOutlet var ambiance: AmbianceButton!
    @IBOutlet var bounce: BounceButton!
    @IBOutlet var boxed: BoxedButton!
    @IBOutlet var burst: BurstButton!
    @IBOutlet var checkin: CheckInButton!
    @IBOutlet var dashing: DashingButton!
    @IBOutlet var didot: DidotButton!
    @IBOutlet var disguise: DisguiseButton!
    @IBOutlet var fluid: FluidButton!
    @IBOutlet var grown: GrownButton!
    @IBOutlet var guesshow: GuessHowButton!
    @IBOutlet var layers: LayersButton!
    @IBOutlet var lovely: LovelyButton!
    @IBOutlet var mondo: MondoButton!
    @IBOutlet var overt: OvertButton!
    @IBOutlet var partition: PartitionButton!
    @IBOutlet var pinkie: PinkieButton!
    @IBOutlet var pop: PopButton!
    @IBOutlet var prime: PrimeButton!
    @IBOutlet var simpleton: SimpletonButton!
    @IBOutlet var slices: SlicesButton!
    @IBOutlet var starburst: StarburstButton!
    @IBOutlet var tick: TickButton!
    @IBOutlet var tracer: TracerButton!
    @IBOutlet var transitive: TransitiveButton!
    @IBOutlet var weebly: WeeblyButton!
    @IBOutlet var windmill: WindmillButton!
    @IBOutlet var zombo: ZomboButton!
    
    var buttons = [[ToggleButton]]()
    
    var timer: Timer?
    
    public override func viewWillAppear(_ animated: Bool) {
        buttons = [
            [abbaci],
            [affirm, ambiance],
            [alarm, bounce, checkin],
            [allinone, boxed, dashing, fluid],
            [burst, didot, grown, lovely],
            [disguise, guesshow, mondo, pinkie],
            [layers, overt, pop, slices],
            [partition, prime, starburst, transitive],
            [simpleton, tick, weebly],
            [tracer, windmill],
            [zombo]
        ]
        
        //just for a bit of glam.
        for row in buttons {
            for button in row {
                let layer = button.layer
                layer.cornerRadius = 5
                layer.shadowOpacity = 0.5
                layer.shadowRadius = 4
                layer.masksToBounds = false
                layer.shadowRadius = 2
                layer.shadowOpacity = 0.25
                layer.shadowColor = UIColor.black.cgColor
                layer.shadowOffset = CGSize(width: 0, height: 2)
            }
        }
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        timer = Timer(fire: Date(timeIntervalSinceNow: 0), interval: 2.5, repeats: true, block: { _ in
            self.dispatchToggle()
        })
        RunLoop.current.add(timer!, forMode: .default)
    }
    
    public func dispatchToggle() {
        let dt = 0.1
        var start: TimeInterval = 0.0
        for row in buttons {
            DispatchQueue.main.asyncAfter(deadline: .now() + start) {
                for button in row {
                    button.sendActions(for: .touchUpInside)
                }
            }
            start = start + dt
        }
    }
    
    public override var prefersStatusBarHidden: Bool {
        return true
    }
}
