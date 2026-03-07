# bib

This is a repo with all of our papers, theses, journals, press articles, etc.

* `atlas.bib` contains papers from the [Atlas group](https://atlas.cs.brown.edu) and is the authoritative source.
* `other.bib` contains other papers that are useful to the group.

If you are a student in the group you do **not** need to import anything else to have access to all papers published by the group—use other `bibtex` files for other literature (and ask your collaorators to do so too).

## Optional extra fields

In addition to standard BibTeX fields, this repository also uses:

* `tags`: a comma-separated list of topic labels for the entry; these could be [Brown Systems projects](https://atlas.cs.brown.edu/KtbxLzFvRgzPLQTVqWjTslGNMtkHCvzbDB/systems-at-brown/projects/index.html) (eg `optimization`) or group-internal information (e.g., `security`)
* `artifact`: a URL to the paper's associated artifact, especially in cases when the paper received artifact badges—for example: GitHub URL or web page describing code, benchmarks, online appendix, or any other information.
* `pdf`: a URL to the paper's PDF (for example on a personal or lab server); we typically use the bibtex entry's key (`system:conf:full-year`, see below) as the local PDF name (PDFs are not checked into this repo).

Example:

```bibtex
@inproceedings{system:conf:full-year,
  title         = {Example Paper},
  author        = {Author One and Author Two},
  year          = {2026},
  booktitle     = {Example Conference},
  url           = {https://example.org/paper},
  pdf           = {https://people.example.edu/~author/example-paper.pdf},
  artifact      = {https://github.com/example/project},
  tags          = {performance, security, correctness}
}
```

For what's possible with this information, check out: https://atlas.cs.brown.edu/publications/
