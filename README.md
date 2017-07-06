# Custom Animation

Custom Animation is a simple project that allows you to see all kinds of basic UIView animations (as well as a couple of UIImageView and UIButton methods), in code and running in the simulator, and play around with them in a test environment.

The idea is that I will be able to alter this project in order to do a presentation on creating iOS animations.

## Install

To check out the Custom Animation app:

1. Clone or download my repository:
` $ https://github.com/ginnypx1/CustomAnimation.git `

2. Enter the "CustomAnimation" directory:
` $ cd /CustomAnimation-master/ `

3. Open "CustomAnimation" in XCode:
` $ open CustomAnimation.xcodeproj `

## Instructions

Launch the app and play around with all kinds of animation techniques.

## Technical Information

The app data was created in XCode 9 Beta.

## Additional Features

A transcript of the presentation to go with the app and the steps to build the full app through the presentation.

## Flow

1. positionSquaresOutOfView - removes the four views from the main view so they can be animated in, prep work
2. pullSquaresToMiddle - most basic UIView.animate(withDuration:) example (Can be done with springs to demo full block)
3. squaresToCircles - demos a basic layer animation by altering the cornerRadius of the view
4. changeBackgroundView - basic UIView.animate, can introduce delay, change entire screen
5. fadeOut/fadeIn - demos how popular fade in and out is done, introduces the concept of UIView.animateKeyframes
6. moveCirclesToRight - adds in the spring damping option to the basic UIView.animate(withDuration:)
7. movesCirclesToLeft() - adds in the concept of the four timing curves and allows user to compare each
8. oneBigDot - adds in the concept of transform, CGAffineTransform, to make the dot bigger
