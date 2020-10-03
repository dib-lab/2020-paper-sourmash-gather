---
author-meta:
- Luiz Irber
- C. Titus Brown
bibliography:
- content/manual-references.json
date-meta: '2020-10-03'
header-includes: '<!--

  Manubot generated metadata rendered from header-includes-template.html.

  Suggest improvements at https://github.com/manubot/manubot/blob/master/manubot/process/header-includes-template.html

  -->

  <meta name="dc.format" content="text/html" />

  <meta name="dc.title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta name="citation_title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta property="og:title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta property="twitter:title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta name="dc.date" content="2020-10-03" />

  <meta name="citation_publication_date" content="2020-10-03" />

  <meta name="dc.language" content="en-US" />

  <meta name="citation_language" content="en-US" />

  <meta name="dc.relation.ispartof" content="Manubot" />

  <meta name="dc.publisher" content="Manubot" />

  <meta name="citation_journal_title" content="Manubot" />

  <meta name="citation_technical_report_institution" content="Manubot" />

  <meta name="citation_author" content="Luiz Irber" />

  <meta name="citation_author_institution" content="Graduate Group in Computer Science, UC Davis" />

  <meta name="citation_author_institution" content="Department of Population Health and Reproduction, UC Davis" />

  <meta name="citation_author_orcid" content="0000-0003-4371-9659" />

  <meta name="twitter:creator" content="@luizirber" />

  <meta name="citation_author" content="C. Titus Brown" />

  <meta name="citation_author_institution" content="Department of Population Health and Reproduction, UC Davis" />

  <meta name="citation_author_orcid" content="0000-0001-6001-2677" />

  <link rel="canonical" href="https://dib-lab.github.io/2020-paper-sourmash-gather/" />

  <meta property="og:url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/" />

  <meta property="twitter:url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/" />

  <meta name="citation_fulltext_html_url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/" />

  <meta name="citation_pdf_url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/manuscript.pdf" />

  <link rel="alternate" type="application/pdf" href="https://dib-lab.github.io/2020-paper-sourmash-gather/manuscript.pdf" />

  <link rel="alternate" type="text/html" href="https://dib-lab.github.io/2020-paper-sourmash-gather/v/96adfe268dbd458cd8ed87b9e7b349040c1256bc/" />

  <meta name="manubot_html_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/96adfe268dbd458cd8ed87b9e7b349040c1256bc/" />

  <meta name="manubot_pdf_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/96adfe268dbd458cd8ed87b9e7b349040c1256bc/manuscript.pdf" />

  <meta property="og:type" content="article" />

  <meta property="twitter:card" content="summary_large_image" />

  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />

  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />

  <meta name="theme-color" content="#ad1457" />

  <!-- end Manubot generated metadata -->'
keywords:
- k-mers
- MinHash
lang: en-US
manubot-clear-requests-cache: false
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
title: Lightweight compositional analysis of metagenomes with sourmash gather
...






<small><em>
This manuscript
([permalink](https://dib-lab.github.io/2020-paper-sourmash-gather/v/96adfe268dbd458cd8ed87b9e7b349040c1256bc/))
was automatically generated
from [dib-lab/2020-paper-sourmash-gather@96adfe2](https://github.com/dib-lab/2020-paper-sourmash-gather/tree/96adfe268dbd458cd8ed87b9e7b349040c1256bc)
on October 3, 2020.
</em></small>

## Authors



+ **Luiz Irber**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon}
    [0000-0003-4371-9659](https://orcid.org/0000-0003-4371-9659)
    · ![GitHub icon](images/github.svg){.inline_icon}
    [luizirber](https://github.com/luizirber)
    · ![Twitter icon](images/twitter.svg){.inline_icon}
    [luizirber](https://twitter.com/luizirber)<br>
  <small>
     Graduate Group in Computer Science, UC Davis; Department of Population Health and Reproduction, UC Davis
     · Funded by Grant XXXXXXXX
  </small>

+ **C. Titus Brown**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon}
    [0000-0001-6001-2677](https://orcid.org/0000-0001-6001-2677)
    · ![GitHub icon](images/github.svg){.inline_icon}
    [ctb](https://github.com/ctb)<br>
  <small>
     Department of Population Health and Reproduction, UC Davis
  </small>



## Abstract {.page_break_before}

Here we describe an extension of MinHash that permits accurate compositional analysis of metagenomes with low memory and disk requirements.





# Results

## Scaled MinHash sketches support containment operations

* scaled minhash supports similarity and containment

The Scaled MinHash is a mix of MinHash and ModHash.
From the former it keeps the smallest elements,
and from the latter it adopts the dynamic size to allow containment estimation.
Instead of taking $0 \mod m$ elements like $\mathbf{MOD}_m(W)$,
a Scaled MinHash uses a parameter $s$ to select a subset of $W$:
$$\mathbf{SCALED}_s(W) = \{\,w \leq \frac{H}{s} \mid \forall w \in W\,\}$$
where $H$ is the largest possible value in the domain of $h(x)$ and
$\frac{H}{s}$ is the \emph{maximum hash} value in the Scaled MinHash.

Given an uniform hash function $h$ and $s=m$,
the cardinalities of $\mathbf{SCALED}_s(W)$ and $\mathbf{MOD}_m(W)$ converge for large $\vert W \vert$.
The main difference is the range of possible values in the hash space,
since the Scaled MinHash range is contiguous and the ModHash range is not.
Figure \ref{fig:minhashes} shows an example comparing MinHash, ModHash and Scaled MinHash with the same parameter value.

## Scaled MinHash accurately estimates containment

maybe split into two: definition, and then benchmarking.

second results section would be, "Scaled minhash has good performance..."

* compares well with others
* supports large-scale sketching of genbank

xx How much is missed figure; Poisson calculations?

![
**Letter-value plot of the
differences from containment estimate to ground truth (exact).**
Each method is evaluated for $k=\{21,31,51\}$,
except for `Mash` with $k=51$,
since `Mash` doesn't support $k>32$.
**A**: Using all 68 reference genomes found in previous articles.
**B**: Excluding low coverage genomes identified in previous articles.
](images/containment.svg "Containment estimation between smol, CMash, and mash screen"){#fig:containment}


## Scaled MinHash sketches support efficient indexing for large-scale containment queries

Efficient indexing of scaled minhash signatures is cool.

* hierarchical and inverted indices (SBT and LCA)
* supports efficient containment and similarity queries

## Metagenome sketches can be accurately decomposed into constituent genomes by a greedy algorithm, 'gather'

Greedy decomposition of metagenome sketches by k-mer containment is accurate

Greedy decomposition of metagenomes by k-mer containment (gather) is cool.

* outline algorithm
* compare conceptually vs least/lowest common ancestor approaches; combinatorial
* showcase some examples on synthetic data

## Taxonomic profiling based on 'gather' is accurate

constituent gather is cool.

* CAMI results
* suggests gather/greedy decomposition is pretty good

# Discussion

## Scaled MinHash offers benefits, drawbacks vs regular MinHash

Combine theoretical discussion with practical discussion of benefits/drawbacks.

## Gather works surprisingly well and matches simple data structures

gather is a straightforward algorithm.

easy to take advantage of other data structures b/c "just k-mers".

SBT, LCA implementations.

xx can we guess at places where gather would break?

## Taxonomy results are excellent.

Discuss vs LCA.

reference the LCA-has-limits/k-mers saturate paper

mix and match taxonomies is easy b/c we anchor to genomes.

## Algorithm is simple, computational performance is great

Performant implementation in sourmash

Database types work well

"online" approaches

Some limitations of gather and database types (equal results can be hard to detect efficiently with current SBT implementation)

## Scaled minhash has limitations vs regular minhash

virus, etc. (could go in first discussion section, but also deserves to be highlighted)


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
