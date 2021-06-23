push!(LOAD_PATH,"../src/")
using Documenter, ExampleA

# sets default format or read provided argument
if length(ARGS)==0
    outputFormat = "html"
else
    outputFormat = ARGS[1]
end

# sets different format settings for makedocs
if outputFormat == "pdf"
  formatSetting = Documenter.LaTeX()
elseif outputFormat == "html"
  formatSetting = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true")
else
  error("Output format not considered yet. Please open an issue.")
end

makedocs(
  sitename="Documentation of ExampleA Project",
  format = formatSetting,
  pages = [
    "Home" => "index.md"]
)

if formatSetting == "html"
  deploydocs(
    repo = "github.com/jorgepz/Julia-LaTeX-testbed.git",
    push_preview=true
  )
end
