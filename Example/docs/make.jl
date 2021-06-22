push!(LOAD_PATH,"../src/")
using Documenter, Example

if length(ARGS)==0
  givenArg = "latex"
else
  givenArg = ARGS[1]
end

if givenArg == "latex"
  outputFormat = Documenter.LaTeX()
elseif givenArg == "html"
  outputFormat = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true")
else
  error("output format not implemented.")
end


makedocs(
  sitename="Example documentation",
  format = outputFormat,
  pages = [
    "Home" => "index.md"]
 )

deploydocs(
    repo = "github.com/jorgepz/Julia-LaTeX-testbed.git",
    push_preview=true
)
