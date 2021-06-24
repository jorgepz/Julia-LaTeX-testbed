
# Introduction documentation

This is an Example project used to test features of the JuliaDocs packages.

The command _contents_ command inserts a table of contents of all the documentation, as follows:

```@contents
```

## including julia module

```@meta
CurrentModule = Example
```

```@docs
func(x)
```

## including latex in markdown

This is text followed by a math environment

```math
 f(x) = \int_0^L x dx
```

This is a numbered list where
  1. first entry with text and this math content $x^2$.
  1. second entry with text and this equation
```math
    f(x) = \int_0^L x dx
```
  1. third entry. *the counter is reseted by the equation*

This is a bullet list:
  * text a
  * text b with another bulltet list
    - text c
    - text d
```math
    f(x) = \int_0^L x dx
```
    - text e this second level bullet is not interpreted if an equation is inserted before
  * text f
