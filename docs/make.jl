push!(LOAD_PATH,"../src/")
using Documenter, Example

# sets default format or read provided argument
if length(ARGS)==0
    outputFormat = "html"
else
    outputFormat = ARGS[1]
end


# sets different format and pages settings for each output format
if outputFormat == "pdf"

    makedocs(
      sitename="Documentation of Example Project",
      format = Documenter.LaTeX(),
      pages = [
        "index.md",
        "more.md",
        "thirdA.md",
        "thirdB.md"
      ],
      authors = "AuthorName"
    )

elseif outputFormat == "html"

  makedocs(
    sitename="Documentation of Example Project",
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    pages = [
      "Intro side title" => "index.md",
      "More side title" => "more.md",
      "Third A side title" => "thirdA.md",
      "Third B side title" => "thirdB.md"
    ]
  )

else
  error("Output format not considered yet. Please open an issue.")
end


if outputFormat == "html"
  deploydocs(
    repo = "github.com/jorgepz/Julia_Docs_Testbed.git",
    push_preview=true,
    devbranch = "main"
  )
end
