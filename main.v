import os

fn main() {
	mut accumulator := 0
	code := input('Deadfish - ')

	for _, instruction in code.runes() {
		if instruction == `i` {
			accumulator += 1
		}
		if instruction == `d` {
			accumulator -= 1
		}
		if instruction == `s` {
			accumulator *= accumulator
		}
		if instruction == `o` {
			print(rune(accumulator))
		}
		if accumulator == 256 || accumulator == -1 {
			accumulator = 0
		}
	}
}
