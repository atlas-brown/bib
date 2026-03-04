# bib

Use this as a git submodule in all your papers.

* `atlas.bib` contains papers from the atlas group and is the authoritative source.
* `other.bib` contains other papers that are useful to the group.

## Optional extra fields

In addition to standard BibTeX fields, this repository also uses:

* `tags`: a comma-separated list of topic labels for the entry.
* `artifact`: a URL to the paper's artifact (for example code, benchmark suite, or project page).
* `pdf`: a URL to the paper's PDF (for example on a personal or lab server).

Example:

```bibtex
@inproceedings{example:key,
  title         = {Example Paper},
  author        = {Author One and Author Two},
  year          = {2026},
  booktitle     = {Example Conference},
  url           = {https://example.org/paper},
  pdf           = {https://people.example.edu/~author/example-paper.pdf},
  artifact      = {https://github.com/example/project},
  tags          = {performance, correctness}
}
```
