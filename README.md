<img src="https://github.com/createwithflow/Checkboxes/blob/main/Assets/flow-logo%402x.png" width="120" />

# Checkboxes
<img align="right" src="https://github.com/createwithflow/Checkboxes/blob/master/Assets/checkBoxesAll32Portrait.gif" width="320" />

#### A set of 32 awesome checkbox buttons, <u>FREE to use.</u><br />
#### Written in pure Swift, using Core Animation.<br />
#### Made with [Flow](https://createwithflow.com/?utm_source=github&utm_medium=checkboxes).<br />

# Story
**We created and shipped all 32 of these animations in two days**. We drew on inspirations from Dribbble, all designs were created in Figma > [here's the file](https://www.figma.com/file/SIGnizFPmXI1dYS7A5jdKr/CheckBoxes). All code was exported using the `iOS Toggle Button` option in [Flow](https://createwithflow.com/?utm_source=github&utm_medium=checkboxes).

Check back soon for our blog post about the process.

# Usage
Each class has its own unique initializer. For example:

```
CheckInButton(frame: frame)
```

You can also use our convience class, like so:

```
Checkboxes.create(.checkin)
```

# Structure
We offer a common, basic subclass of `UIButton`.

```
ToggleButton: UIButton {
  ...
}
```

This basic subclass handles the construction of the button, provides the space for common styling additions, and syncs playback of one or more timeliens with native UIButton methods.

## Custom Subclasses
Each button is a subclass of `ToggleButton`.

```
CheckInButton: ToggleButton {
  ...
}
```

# Native Animation Code
Animations are written in Swift. They require a few lightweight classes that can be found in [FlowCommoniOS](https://github.com/createwithflow/FlowCommoniOS).

Our animations take full advantage of native Core Animation, most prominently `CAKeyFrameAnimation`.

Here is a sample of our animation code:

```
let strokeEndAnimation: CAKeyframeAnimation = {
    let keyframeAnimation = CAKeyframeAnimation()
    keyframeAnimation.keyPath = "strokeEnd"
    keyframeAnimation.values = [0.16, 0.99]
    keyframeAnimation.keyTimes = [0, 1] 
    keyframeAnimation.timingFunctions = [.easeInEaseOut]
    keyframeAnimation.duration = duration
    return keyframeAnimation
}()
```

# Installation
When we ship a cocoapod for this project, we'll update the instructions here.

For now, please download and install manually. 

1. Download the project.
2. Install FlowCommon into your project (copy the files in this repo, or install via [FlowCommoniOS](https://github.com/createwithflow/FlowCommoniOS)).
3. Copy `ActivityIndicatorView.flow`
4. For each indicator your want to use, copy three files into your project:

```
<Animation>ActivityIndicatorView.swift
<Animation>Timeline.swift
<Animation>View.swift
```

# Types & Shots
We love Dribbble and a lot of the animations in this project were originally inspired by other people's great work, which we riffed on and added our own flair and rebounded with links to the original post and designer. Each indicator is posted to [Flow's Official Dribbble Account](https://dribbble.com/createwithflow), and in the writeup for each shot we've referenced the original, and the maker. 

Below is the list of all 32, and the names are identical to the `enum` cases in the project.

| type name | shot |
|---|---|
| `` | []() |
