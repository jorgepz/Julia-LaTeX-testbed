
# Introduction documentation

This is an Example project used to test features of the JuliaDocs packages.

The command _contents_ command inserts a table of contents of all the documentation, as follows:

```@contents
```

```@meta
CurrentModule = Example
```

```@docs
func(x)
```

## testing LaTeX

This is text
```math
 f(x) = \int_0^L x dx
```

This is a numbered list:
  1. text a
  1. text b
```math
    f(x) = \int_0^L x dx
```
  1. text c

This is a bullet list:
  * text a
  * text b with another bulltet list
    - text c
    - text d
```math
    f(x) = \int_0^L x dx
```
    - text e
  * text f

# another title
