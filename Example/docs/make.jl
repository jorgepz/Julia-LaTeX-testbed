
push!(LOAD_PATH,"../src/")

using Documenter, Example

makedocs(sitename="Example documentation.")

deploydocs(
    repo = "github.com/jorgepz/Julia-LaTeX-testbed.git",
    push_preview=true
)

