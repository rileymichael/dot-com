---
date: 2023-09-04
---

# hello world

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec
maximus ex. Sed consequat, nulla quis malesuada dapibus, elit metus vehicula
erat, ut egestas tellus eros at risus. In hac habitasse platea dictumst.
Phasellus id lacus pulvinar erat consequat pretium. Morbi malesuada arcu mauris
Nam vel justo sem. Nam placerat purus non varius luctus. Integer pretium leo in
sem rhoncus, quis gravida orci mollis. Proin id aliquam est. Vivamus in nunc ac
metus tristique pellentesque. Suspendisse viverra urna in accumsan aliquet.

<!-- more -->

full content here...

and here's a code block:

```kotlin
sealed interface Instruction { // (1)!
    data class Add(val value: Int) : Instruction
    object NoOp : Instruction
}

private fun String.parseInstruction() = when {
    this == "noop" -> Instruction.NoOp
    startsWith("addx") -> Instruction.Add(substringAfter("addx ").toInt())
    else -> error("Unhandled instruction")
}
```

1. using the sealed modifier allows us to exhaustively handle instructions
