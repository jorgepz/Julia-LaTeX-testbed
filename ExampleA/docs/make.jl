push!(LOAD_PATH,"../src/")
using Documenter, ExampleA

# process format argument, if provided
if length(ARGS)==0 || ARGS[1] == "pdf"
  outputFormat = Documenter.LaTeX()
elseif ARGS[1] == "html"
  outputFormat = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true")
else
    error("Output format not considered yet. Please open an issue.")
end

makedocs(
  sitename="Documentation of ExampleA Project",
  format = outputFormat,
  pages = [
    "Home" => "index.md"]
)

deploydocs(
    repo = "github.com/jorgepz/Julia-LaTeX-testbed.git",
    push_preview=true
)
