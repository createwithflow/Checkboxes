//
//  ActivityIndicators.swift
//  ActivityIndicatorView
//
//  Created by Travis on 2020-10-19.
//  Copyright © 2020 Flow. All rights reserved.
//

import UIKit

public enum CheckboxType: CaseIterable {
    case abbaci
    case affirm
    case alarm
    case allinone
    case ambiance
    case bounce
    case boxed
    case burst
    case checkin
    case dashing
    case didot
    case disguise
    case fluid
    case grown
    case guesshow
    case layers
    case lovely
    case mondo
    case overt
    case partition
    case pinkie
    case pop
    case prime
    case simpleton
    case slices
    case starburst
    case tick
    case tracer
    case transitive
    case weebly
    case windmill
    case zombo
}

public class Checkboxes {
    class func create(_ type: CheckboxType) -> ToggleButton? {
        let frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        var checkbox: ToggleButton?
        switch type {
        case .abbaci:
            checkbox = AbbaciButton(frame: frame)
        case .affirm:
            checkbox = AffirmButton(frame: frame)
        case .alarm:
            checkbox = AlarmButton(frame: frame)
        case .allinone:
            checkbox = AllinoneButton(frame: frame)
        case .ambiance:
            checkbox = AmbianceButton(frame: frame)
        case .bounce:
            checkbox = BounceButton(frame: frame)
        case .boxed:
            checkbox = BoxedButton(frame: frame)
        case .burst:
            checkbox = BurstButton(frame: frame)
        case .checkin:
            checkbox = CheckInButton(frame: frame)
        case .dashing:
            checkbox = DashingButton(frame: frame)
        case .didot:
            checkbox = DidotButton(frame: frame)
        case .disguise:
            checkbox = DisguiseButton(frame: frame)
        case .fluid:
            checkbox = FluidButton(frame: frame)
        case .grown:
            checkbox = GrownButton(frame: frame)
        case .guesshow:
            checkbox = GuessHowButton(frame: frame)
        case .layers:
            checkbox = LayersButton(frame: frame)
        case .lovely:
            checkbox = LovelyButton(frame: frame)
        case .mondo:
            checkbox = MondoButton(frame: frame)
        case .overt:
            checkbox = OvertButton(frame: frame)
        case .partition:
            checkbox = PartitionButton(frame: frame)
        case .pinkie:
            checkbox = PinkieButton(frame: frame)
        case .pop:
            checkbox = PopButton(frame: frame)
        case .prime:
            checkbox = PrimeButton(frame: frame)
        case .simpleton:
            checkbox = SimpletonButton(frame: frame)
        case .slices:
            checkbox = SlicesButton(frame: frame)
        case .starburst:
            checkbox = StarburstButton(frame: frame)
        case .tick:
            checkbox = TickButton(frame: frame)
        case .tracer:
            checkbox = TracerButton(frame: frame)
        case .transitive:
            checkbox = TransitiveButton(frame: frame)
        case .weebly:
            checkbox = WeeblyButton(frame: frame)
        case .windmill:
            checkbox = WindmillButton(frame: frame)
        case .zombo:
            checkbox = ZomboButton(frame: frame)
        }
        return checkbox
    }
}
