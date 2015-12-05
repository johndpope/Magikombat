import Foundation

class Actor {

	var body: Body?

	func handleInput(input: Input) {
		let dPad = input.dPad.rawValue
		var v = Vector.zeroVector

		if dPad & DSHatDirection.Left.rawValue != 0 {
			v.dx = -5
		}
		if dPad & DSHatDirection.Right.rawValue != 0 {
			v.dx = 5
		}
		if dPad & DSHatDirection.Up.rawValue != 0 {
			v.dy = 4
		}
		if dPad & DSHatDirection.Down.rawValue != 0 {
			
		}

		body?.applyImpulse(v)
	}
}
