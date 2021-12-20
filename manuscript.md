---
title: Lightweight compositional analysis of metagenomes with sourmash gather
keywords:
- k-mers
- MinHash
lang: en-US
date-meta: '2021-12-20'
author-meta:
- Luiz Irber
- Phillip T. Brooks
- Taylor Reiter
- N. Tessa Pierce
- David Koslicki
- C. Titus Brown
header-includes: |-
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta name="dc.title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />
  <meta name="citation_title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />
  <meta property="og:title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />
  <meta property="twitter:title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />
  <meta name="dc.date" content="2021-12-20" />
  <meta name="citation_publication_date" content="2021-12-20" />
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
  <meta name="citation_author" content="Phillip T. Brooks" />
  <meta name="citation_author_institution" content="Department of Population Health and Reproduction, UC Davis" />
  <meta name="citation_author_orcid" content="0000-0003-3987-244X" />
  <meta name="twitter:creator" content="@brooksph" />
  <meta name="citation_author" content="Taylor Reiter" />
  <meta name="citation_author_institution" content="Graduate Group in Food Science, UC Davis" />
  <meta name="citation_author_institution" content="Department of Population Health and Reproduction, UC Davis" />
  <meta name="citation_author_orcid" content="0000-0002-7388-421X" />
  <meta name="twitter:creator" content="@ReiterTaylor" />
  <meta name="citation_author" content="N. Tessa Pierce" />
  <meta name="citation_author_institution" content="Department of Population Health and Reproduction, UC Davis" />
  <meta name="citation_author_orcid" content="0000-0002-2942-5331" />
  <meta name="twitter:creator" content="@saltyscientist" />
  <meta name="citation_author" content="David Koslicki" />
  <meta name="citation_author_institution" content="Computer Science and Engineering, Pennsylvania State University" />
  <meta name="citation_author_orcid" content="0000-0002-0640-954X" />
  <meta name="citation_author" content="C. Titus Brown" />
  <meta name="citation_author_institution" content="Department of Population Health and Reproduction, UC Davis" />
  <meta name="citation_author_orcid" content="0000-0001-6001-2677" />
  <link rel="canonical" href="https://dib-lab.github.io/2020-paper-sourmash-gather/" />
  <meta property="og:url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/" />
  <meta property="twitter:url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/" />
  <meta name="citation_fulltext_html_url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/" />
  <meta name="citation_pdf_url" content="https://dib-lab.github.io/2020-paper-sourmash-gather/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://dib-lab.github.io/2020-paper-sourmash-gather/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://dib-lab.github.io/2020-paper-sourmash-gather/v/0174fcd16ce75b05c421fcf504521a16a3e2e5c1/" />
  <meta name="manubot_html_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/0174fcd16ce75b05c421fcf504521a16a3e2e5c1/" />
  <meta name="manubot_pdf_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/0174fcd16ce75b05c421fcf504521a16a3e2e5c1/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...






<small><em>
This manuscript
([permalink](https://dib-lab.github.io/2020-paper-sourmash-gather/v/0174fcd16ce75b05c421fcf504521a16a3e2e5c1/))
was automatically generated
from [dib-lab/2020-paper-sourmash-gather@0174fcd](https://github.com/dib-lab/2020-paper-sourmash-gather/tree/0174fcd16ce75b05c421fcf504521a16a3e2e5c1)
on December 20, 2021.
</em></small>

## Authors



+ **Luiz Irber**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0003-4371-9659](https://orcid.org/0000-0003-4371-9659)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [luizirber](https://github.com/luizirber)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [luizirber](https://twitter.com/luizirber)<br>
  <small>
     Graduate Group in Computer Science, UC Davis; Department of Population Health and Reproduction, UC Davis
     · Funded by Grant XXXXXXXX
  </small>

+ **Phillip T. Brooks**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0003-3987-244X](https://orcid.org/0000-0003-3987-244X)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [brooksph](https://github.com/brooksph)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [brooksph](https://twitter.com/brooksph)<br>
  <small>
     Department of Population Health and Reproduction, UC Davis
  </small>

+ **Taylor Reiter**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-7388-421X](https://orcid.org/0000-0002-7388-421X)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [taylorreiter](https://github.com/taylorreiter)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [ReiterTaylor](https://twitter.com/ReiterTaylor)<br>
  <small>
     Graduate Group in Food Science, UC Davis; Department of Population Health and Reproduction, UC Davis
  </small>

+ **N. Tessa Pierce**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-2942-5331](https://orcid.org/0000-0002-2942-5331)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [bluegenes](https://github.com/bluegenes)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [saltyscientist](https://twitter.com/saltyscientist)<br>
  <small>
     Department of Population Health and Reproduction, UC Davis
     · Funded by NSF 1711984
  </small>

+ **David Koslicki**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-0640-954X](https://orcid.org/0000-0002-0640-954X)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [dkoslicki](https://github.com/dkoslicki)<br>
  <small>
     Computer Science and Engineering, Pennsylvania State University
  </small>

+ **C. Titus Brown**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0001-6001-2677](https://orcid.org/0000-0001-6001-2677)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [ctb](https://github.com/ctb)<br>
  <small>
     Department of Population Health and Reproduction, UC Davis
  </small>



## Abstract {.page_break_before}

The assignment of reference genomes and taxonomy to metagenome data underlies
many microbiome studies. Here we describe two algorithms for
compositional analysis of metagenome sequencing data. We first investigate
the _FracMinHash_ sketching technique, a derivative of modulo hash that
supports Jaccard containment estimation between sets of different size.
We implement _FracMinHash_ in the sourmash software, evaluate its
accuracy, and demonstrate
large-scale containment searches of metagenomes using all 700,000 currently
available microbial reference genomes.
We next frame shotgun
metagenome compositional analysis as the problem of finding a minimum
collection of reference genomes that "cover" the known k-mers in a metagenome,
a minimum set cover problem.
We implement a greedy
approximate solution using  _FracMinHash_ sketches, and evaluate
its accuracy in taxonomic assignment using a CAMI community benchmark.
Finally, we show that the minimum metagenome cover can be used to guide the
select of reference genomes for read mapping.
sourmash is available as open source under the
BSD 3-Clause license at github.com/dib-lab/sourmash/.


# Introduction

Shotgun DNA sequencing of microbial communities is an important
technique for studying host-associated and environmental microbiomes 
[@doi:10.1038/s41587-020-0718-6; @doi:10.1111/1462-2920.15314].
By sampling the DNA sequence content of microbial communities, shotgun
metagenomics enables the taxonomic and functional characterization of
microbiomes [@doi:10.1038/s41586-019-1238-8; @doi:10.1126/science.1261359]. 
However, this characterization relies critically on the methods and 
databases used to interpret the sequencing data 
[@doi:10.1038/d41586-019-01654-0; @doi:10.1038/s41592-021-01141-3; 
@doi:10.1101/2021.07.12.451567; @doi:10.1093/bib/bbx120].

Metagenome function and taxonomy is typically inferred from available
reference genomes and gene catalogs, via direct genomic alignment
[@doi:10.7554/eLife.65088;@doi:10.1186/s13062-018-0208-7], large-scale
protein search
[@doi:10.1093/bioinformatics/btab184;@doi:10.1093/nar/gky1085], or
k-mer matches
[@doi:10.1186/s13059-019-1891-0;@doi:10.1038/ncomms11257].  For many
of these methods, the substantial increase in the number of available
microbial reference genomes (1.1m in GenBank as of November 2021)
presents a significant practical obstacle to comprehensive
compositional analyses, and most methods choose representative subsets
of available genomic information to analyze; for example, bioBakery 3
provides a database containing 99.2k reference genomes
[@doi:10.7554/eLife.65088].

Here, we describe a lightweight and scalable approach to compositional
analysis of shotgun metagenome data based on finding the minimum set
of reference genomes that accounts for all known k-mers in a
metagenome - a "minimum metagenome cover".  We use a mod-hash based sketching approach for k-mers to
reduce memory requirements [@doi:10.1109/SEQUEN.1997.666900], and implement a polynomial-time greedy
approximation algorithm for the minimum set cover analysis.

Our approach tackles the selection of appropriate reference genomes
for downstream analysis and provides a computationally efficient
method for taxonomic classification of metagenome data.  Our
implementation in the open source `sourmash` software works with
reference databases containing a million or more microbial genomes and
supports multiple taxonomies and private databases.

<!--

We first describe _FracMinHash_, a sketching technique based on
mod-hash (cite Broder), 
that supports containment estimation for metagenome
datasets using k-mers.  We implement _FracMinHash_ in a Python and
Rust package, `sourmash`, and demonstrate that it is competitive in
accuracy with other containment estimation approaches.

We next frame reference-based metagenome content analysis as a
min-set-cov problem, where we determine the _minimum_ number of
genomes from a reference database needed to cover the identifiable
genomic content from a metagenome.  We implement a
best-polynomial-time greedy approximation to the min-set-cov problem
using _FracMinHash_ in `sourmash`. This technique provides an
iterative decomposition of metagenomes into genome matches.

To evaluate the accuracy of our min-set-cov procedure, we implement a
simple taxonomic classification approach in which we use the taxonomy
of the genomes in the set cover to define the taxonomy of the
metagenome content. We show that this permits precise and lightweight
classification of metagenome content across all taxonomic levels.

Finally, we show that the minimum set covers for several metagenomes
contain only a small subset of reference genomes even when using very
large and redundant databases, and demonstrate that this subset can be
used to map the metagenome reads in concordance with the estimates
from _FracMinHash_. Thus, _FracMinHash_ combined with
min-set-cov provides a lightweight, accurate, and scalable way to
estimate the composition of metagenomes using a large reference
database.
-->


# Results

We first describe _FracMinHash_, a sketching technique that supports
containment estimation for metagenome datasets using k-mers. We next
frame reference-based metagenome content analysis as the problem of
finding a _minimum set cover_ for a metagenome using a collection of
reference genomes. We then evaluate the accuracy of this approach
using a taxonomic classification benchmark. Finally, we demonstrate
the utility of this approach by using the genomes from the minimum metagenome
cover as reference genomes for read mapping.

## FracMinHash sketches support accurate containment operations

We define the *fractional MinHash*, or FracMinHash, on an input domain
of hash values $W$, as follows:

$$\mathbf{FRAC}_s(W) = \{\,w \leq \frac{H}{s} \mid \forall w \in
W\,\}$$ where $H$ is the largest possible value in the domain of
$h(x)$ and $\frac{H}{s}$ is the *maximum hash value* allowed in the
FracMinHash sketch.

The FracMinHash is a mix of MinHash and ModHash
[@doi:10.1186/s13059-016-0997-x; @doi:10.1109/SEQUEN.1997.666900].  It
keeps the selection of the smallest elements from MinHash, while using
the dynamic size from ModHash to allow containment estimation.
However, instead of taking $0 \mod m$ elements like
$\mathbf{MOD}_m(W)$, a FracMinHash uses the parameter $s$ to select a
subset of $W$.

Like ModHash (but not MinHash), FracMinHash supports estimation
of the containment index:


```{=latex}
\begin{equation}
    \hat{C}_\text{scale}(A,B):=\frac{\vert \mathbf{FRAC}_S(A) \cap \mathbf{FRAC}_S(B)\vert }{\vert \mathbf{FRAC}_S(A)\vert}.
\end{equation}
```


See Methods for details.

<!--

FracMinHash supports containment estimation with high accuracy and
low bias. **(Analytic work from David HERE.)**

* approximation formula (eqn 13 from overleaf)
* for queries into large sets (large $|A|$), bias factor is low.
* refer to appendix for derivation.

-->

Given a uniform hash function $h$ and $s=m$, the cardinalities of
$\mathbf{FRAC}_s(W)$ and $\mathbf{MOD}_m(W)$ converge for large
$\vert W \vert$.  The main difference is the range of possible values
in the hash space, since the FracMinHash range is contiguous and
the ModHash range is not.  This permits a variety of convenient
operations on the sketches, including iterative downsampling of FracMinHash sketches as well as conversion to MinHash sketches.

## A FracMinHash implementation accurately estimates containment between sets of different sizes

We compare the FracMinHash method to CMash (_Containment
MinHash_) [@doi:10.1101/184150] and Mash Screen (_Containment Score_)
[@doi:10.1186/s13059-019-1841-x] for containment queries in data from a
mock bacterial and archaeal community where the
reference genomes are largely known [@doi:10.1111/1462-2920.12086].
This data set has been used in several methods evaluations
[@doi:10.1093/bioinformatics/btu395;@doi:10.1101/gr.213959.116;@doi:10.1101/155358;@doi:10.1186/s13059-019-1841-x].

![
**Letter-value plot [@doi:10.1080/10618600.2017.1305277] of the
differences from containment estimate to ground truth (exact).**
Each method is evaluated for $k=\{21,31,51\}$,
except for `Mash` with $k=51$, which is unsupported.
](images/containment.svg "Containment estimation between FracMinHash, CMash, and mash screen"){#fig:containment}

Figure @fig:containment shows containment analysis of genomes in this metagenome, with low-coverage and
contaminant genomes (as described in [@doi:10.1101/155358] and
[@doi:10.1186/s13059-016-0997-x]) removed from the database.
All methods are within 1\% of the exact containment on average (Figure
@fig:containment), with `CMash` consistently underestimating
the containment for large $k$ and overestimating for small $k$.  `Mash
Screen` with $n=10000$ has the smallest difference to ground truth for
$k=\{21, 31\}$, followed by `FracMinHash` with `scaled=1000` and `Mash
Screen` with $n=1000$.

CTB TODO:

* switch figure to use sourmash; update description to reference sourmash.

## We can use FracMinHash to construct a minimum set cover for metagenomes

We next ask: what is the smallest collection of genomes in a database
that contains all of the known k-mers in a metagenome?
Formally, for a
given metagenome $M$ and a reference database $D$, what is the minimum
collection of genomes in $D$ which contain all of the k-mers in the
intersection of $D$ and $M$? We wish to find the smallest set
$\{ G_n \}$ of genomes in $D$ such that, for the k-mer decomposition $k()$,
$$ k(M) \cap k(D) = \bigcup_n \{ k(M) \cap k(G_n) \} $$

This is a *minimum set covering* problem, for which there is a
polynomial-time approximation [@doi:10.1007/978-0-387-30162-4_175]:

1. Initialize $C \leftarrow \emptyset$
2. Define $f(C) = \vert \cup_{s \in C} \{ s \} \vert$
3. Repeat until $f(C) = f(M \cap D)$:
   4. Choose $s \in G$ maximizing the contribution of the element $f(C \cup \{ s \}) - f(C)$
   5. Let $C \leftarrow C \cup \{ s \}$
6. Return $C$

This greedy algorithm iteratively chooses reference genomes from $D$
in order of largest remaining overlap with $M$.  This results in a
progressive classification of the known k-mers in the
metagenome to specific genomes.[^equivalent]

[^equivalent]: In our current implementation in `sourmash`, when
equivalent matches are available for a given rank, a match is chosen
at random. This is an implementation decision that is not intrinsic to
the algorithm itself.

In Figure @fig:gather0, we show an example of this iterative
classification of k-mers by matching GenBank genome for the mock metagenome from 
[@doi:10.1111/1462-2920.12086], which we term `podar mock` (see
Table @tbl:genbank-cover, row 2). The matching genomes are provided
in the order found by the greedy algorithm, i.e. by overlap with remaining k-mers in the metagenome.
The
high rank (early) matches reflect large and/or mostly-covered genomes
with high containment, while later matches reflect genomes that share
fewer k-mers with the remaining set of k-mers in the metagenome -
smaller genomes, less-covered genomes, and/or genomes with substantial
overlap with earlier matches. Where there are overlaps between
genomes, shared common k-mers are "claimed" by higher rank matches and
only k-mer content specific to the later genome is used to find
lower rank matches.

As one example of metagenome k-mers shared with multiple matches,
genomes from two strains of *Shewanella baltica* are present in the
mock metagenome.  These genomes have an approximately 50% overlap in
k-mer content, and these shared k-mers are first claimed by
*Shewanella baltica* OS223 -- compare *S. baltica* OS223, rank
8, with *S. baltica* OS185, rank 33 in Figure
@fig:gather0. Here the difference between the red circles and green
triangles for *S. baltica* OS185 represents the k-mers claimed by
*S. baltica* OS223 .

<!-- (CTB: maybe indicate or highlight these genomes in the figure?) -->

For this mock metagenome, 205m (54.8%) of 375m k-mers were found in
GenBank
(see
Table @tbl:genbank-cover, row 2).  The remaining 169m (45.2%) k-mers had no matches, and
represent either k-mers introduced by sequencing errors or unknown k-mers from
real community members.

![
**K-mer decomposition of a metagenome into constituent genomes.**
A rank ordering by remaining containment for the first 36 genomes from the minimum metagenome cover
of the `podar mock` synthetic metagenome [@doi:10.1111/1462-2920.12086],
calculated using 700,000 genomes from GenBank. The Y axis is labeled with the NCBI-designed name of the
genome.
In the left plot, the X axis represents the estimated number of k-mers shared
between each genome and the metagenome. The red circles indicate the number
of matching k-mers that were not matched at previous ranks, while the green triangle symbols indicate all matching k-mers.
In the right plot, the X axis represents the estimated k-mer coverage of that
genome.  The red circles indicate the percentage of the genome covered by k-mers remaining at
that rank, while the green triangle symbols indicate overlap between
the genome and the entire metagenome, including those already assigned at previous ranks.
](images/gathergram-SRR606249.hashes.svg "minimum metagenome cover for podar"){#fig:gather0}

## Minimum metagenome covers can accurately estimate taxonomic composition

We evaluated the accuracy of min-set-cov for metagenome decomposition
using benchmarks from the Critical Assessment of Metagenome
Interpretation (CAMI) [@doi:10.1038/nmeth.4458], a community-driven
initiative for reproducibly benchmarking metagenomic methods.  We used
the mouse gut metagenome dataset [@doi:10.1038/s41596-020-00480-3],
in which a simulated
mouse gut metagenome (_MGM_) was derived from 791 bacterial and
archaeal genomes,
representing 8 phyla,
18 classes,
26 orders,
50 families,
157 genera,
and 549 species.
64 samples were generated with _CAMISIM_,
with 91.8 genomes present on each sample on average.
Each sample is 5 GB in size, and both short-read (Illumina) and
long-read (PacBio) simulated sequencing data is available.
(CTB: check citations / content of latest actual CAMI pub, https://www.biorxiv.org/content/10.1101/2021.07.12.451567v1)

Since min-set-cov yields only a collection of genomes, it must be
converted into a taxonomy for benchmarking with CAMI.
We developed the following procedure for
generating a taxonomic profile from a given metagenome
cover. For each genome match, we note
the species designation in the NCBI taxonomy for that genome. Then, we
calculate the fraction of the genome remaining in the metagenome
after k-mers belonging to higher-rank genomes have been removed (e.g. red
circles in Figure @fig:gather0 (a)). We use this fraction to weight
the contribution of the genome's species designation to the
metagenome taxonomy. This procedure produces an estimate of that
species' taxonomic contribution to the metagenome, and normalizes by the
genome size.

![
Comparison per taxonomic rank of methods in terms of completeness, purity (1% filtered), and L1 norm.
](images/spider_plot_relative.svg){#fig:spider}

<!--
![
Performance per method at all major taxonomic ranks, with the shaded bands showing the standard deviation of a metric.  In **a** and **b**, completeness, purity, and L1 norm error range between 0 and 1.  The L1 norm error is normalized to this range and is also known as Bray-Curtis distance.  The higher the completeness and purity, and the lower the L1 norm, the better the profiling performance.
](images/ranks_by_tool.svg){#fig:ranks}
-->

![
Methods rankings and scores obtained for the different metrics over all samples and taxonomic ranks.  For score calculation, all metrics were weighted equally.
](images/scores.svg){#fig:scores}


In Figures @fig:spider and @fig:scores we show an updated version of
Figure 6 from [@doi:10.1038/s41596-020-00480-3] that includes our
method, implemented in the `sourmash` software (CTB: what databases
are used?). Here we compare 10 different methods for taxonomic
profiling and their characteristics at each taxonomic rank.  While
previous methods show reduced completeness -- the ratio of taxa
correctly identified in the ground truth -- below the genus level,
`sourmash` can reach 88.7\% completeness at the species level with the
highest purity (the ratio of correctly predicted taxa over all
predicted taxa) across all methods: 95.9\% when filtering predictions
below 1\% abundance, and 97\% for unfiltered results.  `sourmash` also
has the second lowest L1-norm error,
<!-- (the sum of the absolute difference
between the true and predicted abundances at a specific taxonomic
rank) -->
the highest number of true positives and the lowest number of
false positives.
<!-- TR: it looks like mOTU has hte lowest L1-norm, not sourmash? -->
<!-- runtimes/memory are mentioned in the discussion saying they're in the appendix,
I think it would be nice to mention that they're in the appendix here -->

<!--
| Taxonomic binner                | Time (hh:mm) | Memory (kbytes) |
|:--------------------------------|-------------:|----------------:|
| MetaPhlAn 2.9.21                | 18:44        | 5,139,172       |
| MetaPhlAn 2.2.0                 | 12:30        | 1,741,304       |
| Bracken 2.5 (only Bracken)      | **0:01**     | **24,472**      |
| Bracken 2.5 (Kraken and Bracken)| **3:03**     | 39,439,796      |
| FOCUS 0.31                      | 13:27        | 5,236,199       |
| CAMIARKQuikr 1.0.0              | 16:19        | 27,391,555      |
| mOTUs 1.1                       | 19:50        | **1,251,296**   |
| mOTUs 2.5.1                     | 14:29        | 3,922,448       |
| MetaPalette 1.0.0               | 76:49        | 27,297,132      |
| TIPP 2.0.0                      | 151:01       | 70,789,939      |
| MetaPhyler 1.25                 | 119:30       |  2,684,720      |
| sourmash 3.4.0                  | 16:41        |  5,760,922      |

Table: Updated Supplementary Table 12 from [@meyer_tutorial_2020].
Elapsed (wall clock) time (h:mm) and maximum resident set size
(kbytes) of taxonomic profiling methods on the 64 short read samples
of the CAMI II mouse gut data set. The best results are shown in
bold. Bracken requires to run Kraken, hence the times required to run
Bracken and both tools are shown. The taxonomic profilers were run on
a computer with an Intel Xeon E5-4650 v4 CPU (virtualized to 16 CPU
cores, 1 thread per core) and 512 GB (536.870.912 kbytes) of main
memory. {#tbl:gather-cami2}

When considering resource consumption and running times, `sourmash`
used 5.62 GB of memory with an _LCA index_ built from the RefSeq
snapshot (141,677 genomes) with $scaled=10000$ and $k=51$.  Each
sample took 597 seconds to run (on average), totaling 10 hours and 37
minutes for 64 samples.  MetaPhlan 2.9.21 was also executed in the
same machine, a workstation with an AMD Ryzen 9 3900X 12-Core CPU
running at 3.80 GHz, 64 GB DDR4 2133 MHz of RAM and loading data from
an NVMe SSD, in order to compare to previously reported times in Table
@tbl:gather-cami2 [@meyer_tutorial_2020].  MetaPhlan took 11 hours and
25 minutes to run for all samples, compared to 18 hours and 44 minutes
previously reported, and correcting the `sourmash` running time by
this factor it would likely take 16 hours and 41 minutes in the
machine used in the original comparison.  After correction, `sourmash`
has similar runtime and memory consumption to the other best
performing tools (_mOTUs_ and _MetaPhlAn_), both gene marker and
alignment based tools.

Additional points are that `sourmash` is a single-threaded program, so
it didn't benefit from the 16 available CPU cores, and it is the only
tool that could use the full RefSeq snapshot, while the other tools
can only scale to a smaller fraction of it (or need custom databases).
The CAMI II RefSeq snapshot for reference genomes also doesn't include
viruses; this benefits `sourmash` because viral _Scaled MinHash_
sketches are usually not well supported for containment estimation,
since viral sequences require small scaled values to have enough
hashes to be reliable.

-->

## Minimum metagenome covers select small subsets of large databases

<!--
For very large reference databases such as GenBank (which contains
over 700,000 microbial genomes as of January 2021) and GTDB (230,000
genomes in release RS202), this is computationally challenging to do
exactly. (Estimate total number of k-mers in genbank!) We therefore
implemented the algorithm using _Scaled MinHash_ sketches to estimate
containment, and used an overlap threshold of 100,000 k-mers in order
to eliminate genomes with only small overlaps (see Methods).
-->

| data set | genomes >= 100k overlap | min-set-cov | % k-mers identified |
| -------- | -------- | -------- | ------- | 
| `zymo mock` | 405,839 | 19 | 47.1% |
| `podar mock` | 5800 | 74 | 54.8% |
| `gut real` | 96,423     | 99     | 36.0% |
| `oil well real` | 1235 | 135 | 14.9% |

Table: Four metagenomes and the number of genomes in the estimated minimum metagenome cover from GenBank. {#tbl:genbank-cover}

In Table @tbl:genbank-cover, we show the minimum metagenome cover
for four metagenomes against GenBank - two mock communities 
[@https://www.zymoresearch.com/collections/zymobiomics-microbial-community-standards;@doi:10.1111/1462-2920.12086], a human gut microbiome data set
from iHMP [@doi:10.1038/s41586-019-1238-8], and an oil well sample
[@doi:10.1128/mBio.01669-15].  Our implementation provides estimates
for both the *total* number of genomes with substantial overlap to a
query genome, and the minimum set of genomes that account for k-mers
with overlap in the query metagenome. Note that only matches estimated
to have more than 100,000 overlapping k-mers are shown (see Methods for
details).

We find many genomes with overlaps for each metagenome, due to
the redundancy of the reference database. For example, `zymo mock`
contains a *Salmonella* genome, and there are over 200,000 *Salmonella*
genomes that match to it in GenBank. Likewise, `gut real`
matches to over 75,000 *E. coli* genomes in GenBank.  Since neither
`podar mock` nor `oil well real` contain genomes from species with
substantial representation in GenBank, they yield many fewer total
overlapping genomes.

Regardless of the number of genomes in the database with substantial
overlap, the
estimated _minimum_ collection of genomes is always much smaller than the
number of genomes with overlaps. In
the cases where the k-mers in the metagenome are mostly identified,
this is because of database redundancy: e.g. in the case of `zymo
mock`, the min-set-cov algorithm chooses precisely one *Salmonella* genome
from the 200,000+ available. Conversely, in the case of `oil well real`,
much of the sample is not identified,
suggesting that the small size of the covering set is because much
of the sample is not represented in the database.

<!-- CTB provide some kind of taxonomic breakdown at, say, genus level? -->

## Minimum metagenome covers provide representative genomes for mapping

Mapping metagenome reads to representative genomes is an important
step in many microbiome analysis pipelines, but mapping approaches
struggle with large, redundant databases.  One specific use for a minimum
metagenome cover could be to select a small set of representative genomes
for mapping.  We therefore developed a hybrid selection and
mapping pipeline that uses the rank-ordered min-set-cov results to
map reads to candidate genomes.

<!-- CTB do we have a citation for "mapping approaches struggle..."? -->

We first map all metagenome reads to the first ranked genome in the minimum metagenome
cover, and then remove successfully mapped reads from the metagenome.
Remaining unmapped reads are then mapped to the second rank genome, and
this then continues until all genomes have been used.
That is, all reads
mapped to the rank-1 genome in Figure @fig:gather0 are removed from
the rank-2 genome mapping, and all reads mapping to rank-1 and rank-2
genomes are removed from the rank-3 genome mapping, and so on. This produces
results directly analogous to those presented in Figure @fig:gather0,
but for reads rather than k-mers.
<!-- Importantly, in this process we only consider genomes identified in
the minimum set cover, because it is computationally intractable to map
reads to the entire GenBank database. (CTB: check centrifuge.) 
(CTB: provide versions of figure 1 here as Suppl Figure?) 
-->

Figure @fig:mapping compares hash assignment rates
and mapping rates for the four evaluation metagenomes in Table
@tbl:genbank-cover. Broadly speaking, we see that k-mer-based
estimates of metagenome composition agree closely with the number of
bases covered by mapped reads: the y axis has not been re-scaled, so hash matches and read mapping coverage correspond well. This suggests that the k-mer-based min-set-cov
approach effectively selects reference genomes for metagenome read mapping.

For mock metagenomes (panels X and Y), there appears to be a close
correspondence between mapping and hash assignment rates, while for
actual metagenomes, there is more variation between mapping and hash
assignments.  Further work is needed to evaluate rates of variation across
a larger number of metagenomes.

CTB: update figure to contain all four metagenomes! Fix axis labels, symbols.

<!--
(belongs in discussion)
This suggests that metagenome reads are being mapped to different
genomic elements from a species pangenome. While we do not have the
resolution to determine this, the most parsimonious interpretation
is that the "true" reference genome for the species present in the
sample is not in the database, and instead is being cobbled together
from core and accessory genome elements in the database.

(Maybe this is where we use R. gnavus genomes? Yes - take JUST reads
that map to R. gnavus, do gather, show what happens x all gnavus
genomes? Could also do withholding, to show that pangenome elements will
usually map one way or another.)

(Show plots with leftover mapping vs all mapping.)

-->

![
**Hash-based k-mer decomposition of a metagenome into constituent
genomes compares well to bases covered by read mapping.** 
(CTB: add more description here.)
Plots for each of four metagenomes showing estimated k-mer overlap per
genome, along
with bases covered by read mapping.
The reference genomes are rank ordered along the x axis (as in Figure @fig:gather0), based on the largest number of hashes from the metagenome specific to that genome; hence the number of hashes classified for each genome (red circles) is monotonically decreasing.
The y axis shows number of hashes (k-mers) classified to this genome (red circles) or total number of bases in the reference covered by mapped reads (blue stars); the numbers have not been rescaled.
Decreases in mapping (green peaks) occur for genomes which are not
exact matches to the genomes of the organisms used to build the mock
community; for example, in plot (a), the peak at rank 33, *S. baltica OS185* represents reads
that were preferentially mapped to *S. baltica OS223*, rank 8.
[@doi:10.1101/155358;@doi:10.1186/s13059-016-0997-x].
](images/gather-podar.svg "gather results for podar"){#fig:mapping}


# Discussion

Below, we discuss the features and drawbacks of using FracMinHash and
minimum metagenome covers to analyze metagenome datasets.

<!-- (CTB: probably want to talk a bit about long reads below, too.) -->

## FracMinHash provides efficient containment queries for large data sets.

FracMinHash is a derivative of ModHash that uses the bottom hashing
concept from MinHash to support containment operations: all
elements in the set to be sketched are hashed, and any hash values
below a certain fixed boundary value are kept for the sketch. This
fixed boundary value is determined by the desired accuracy for the
sketch operations, with clear space/time constraint tradeoffs.

Intuitively, FracMinHash can be viewed as performing density sampling
at a rate of 1 $k$-mer per $s$ distinct k-mers seen, where $s$ is used
to define define a boundary value $\frac{H}{s}$ for the bottom sketch.
FracMinHash can also be viewed as a type of lossy compression,
with a fixed compression ratio of $s$: for values of $s$ used here ($s
\approx 1000$), k-mer sets are reduced in cardinality by 1000-fold.

Unlike MinHash, FracMinHash supports containment estimation between
sets of very different sizes, and here we demonstrate that it can be
used efficiently and effectively for compositional analysis of shotgun
metagenome data sets with k-mers. In particular, FracMinHash is
competitive in accuracy with extant MinHash-based techniques for
containment analysis, while also supporting Jaccard similarity.

We note that the FracMinHash technique has been used under a number of
different names, including Scaled MinHash
[@doi:10.12688/f1000research.19675.1;@doi:10.5281/zenodo.4057151],
universe minimizers [@doi:10.1016/j.cels.2021.08.009], Shasta
markers [@doi:10.1038/s41587-020-0503-6], and mincode syncmers [@doi:10.7717/peerj.10805].  The name FracMinHash was
coined by Kristoffer Sahlin in an online discussion on Twitter
[@url:https://twitter.com/krsahlin/status/1463169988689285125] and
chosen by discussants as the least ambiguous option. We use it here
accordingly.

FracMinHash offers several conveniences over MinHash.  No hash is ever
removed from a FracMinHash sketch during construction; thus sketches
grow proportionally to the number of distinct k-mers in the sampled
data set, but _also_ support many operations - including all of the
operations used here - without needing to revisit the original data
set. This is in contrast to MinHash, which requires auxiliary data
structures for many operations - most especially, containment
operations [@doi:10.1101/184150;@doi:10.1186/s13059-019-1841-x].  Thus
FracMinHash sketches serve as compressed indices for the original
content for a much broader range of operations than MinHash.

Because FracMinHash sketches collect all hash values below a fixed
threshold, they also support streaming analysis of sketches: any
operations that used a previously selected value can be cached and
updated with newly arriving values.  ModHash has similar properties,
but this is not the case for MinHash: after $n$ values are selected
any displacement caused by new data can invalidate previous
calculations.

FracMinHash also directly supports the addition and subtraction of
hash values from a sketch, allowing for limited types of
post-processing and filtering without revisiting the original data
set. This includes unions and intersections.  Although possible for
MinHash, in practice this requires oversampling (using a larger $n$)
to account for possibly having fewer than $n$ values after filtering,
e.g. see the approach taken in Finch [@doi:10.21105/joss.00505].

When the multiplicity of hashes in the original data is retained,
FracMinHash sketches can be filtered on abundance.  This allows
removing low-abundance values, as implemented in Finch
[@doi:10.21105/joss.00505].  Filtering values that only appear once
was implemented in Mash by using a Bloom filter and only adding values
after they were seen once; later versions also implemented an
extra counter array to keep track of counts for each value in the
MinHash.  These operations can be done in FracMinHash without
auxiliary data structures.

Another useful operation available on FracMinHash sketches is
*downsampling*: the contiguous value range for FracMinHash sketches
means that MinHash sketches can be extracted from FracMinHash sketches
whenever the size of the requested MinHash is less than the size of
the FracMinHash sketch.  Likewise, MinHash sketches can be losslessly converted
to FracMinHash sketches when the maximum hash value in the MinHash
sketch is larger than $H / s$.

Finally, because FracMinHash sketches are simply collections of
hashes, existing k-mer indexing approaches can be applied to sketches
to support fast search with both similarity and containment
estimators; several index types, including Sequence Bloom Trees
[@doi:10.1038/nbt.3442] and reverse indices, are provided in the
sourmash software.

In exchange for these many conveniences, FracMinHash sketches
have limited sensitivity for small data sets where the k-mer
cardinality of the data set $\approx s$, and are only bounded in size
by $H/s$, which is typically quite large $\approx 2e16$.  The limited
sensitivity of sketches may affect the sensitivity of gene- and viral
genome-sized queries, but at $s=1000$ we see comparable accuracy and
sketch size to MinHash for bacterial genome comparisons (Figure
@fig:containment).

<!--
Notes from DK: do these belong in this section?

* The variance of the estimate of C(A,B)=|A\cap B| / |A| appears to
  also depend on |A\B|, which was somewhat surprising
* The “fixed k-size” problem (which might be able to be overcome with
  the prefix-lookup data structure, if one sacrifices some accuracy)
-->

## Minimum set covers can be used for accurate compositional analysis of metagenomes.

Many metagenome content analysis approaches use reference genomes to
interpret the metagenome content, but most such approaches rely on
choosing a list of reduced-redundancy genomes from a much larger database
(e.g. bioBakery 3 selects approximately 100,000 genomes [@doi:10.7554/eLife.65088]).  Here, we do this reduction automatically by searching the complete database for
a *minimum* set of reference genomes necessary to account for all k-mers
shared between the metagenome and the database. We show that
this can be resolved efficiently for real-world data sets; implementing
a greedy min-set-cov approximation algorithm on top of FracMinHash,
we provide an approach that
readily scales to 700,000 genomes on current hardware. We show that in practice this procedure reduces the number of genomes
under consideration to $\approx 100$ for several mock and real
metagenomes.
<!-- CTB: performance should be added to appendix -->

The development of a small list of relevant genomes is particularly
useful for large reference databases containing many redundant
genomes; for example, in Table @tbl:genbank-cover, we show that for
one mock and one real community, we select minimum metagenome covers of 19 and 99
genomes for metagenomes that contain matches to 406k and 96k GenBank
genomes total.

The min-set-cov approach for assigning genomes to metagenomes using
k-mers differs substantially from extant k-mer and mapping-based
approaches for identifying relevant genomes.  LCA-based approaches
such as Kraken label individual k-mers based on taxonomic lineages in
a database, and then use the resulting database of annotated k-mers to
assign taxonomy to reads. Mapping- and homology-based approaches such
as Diamond use read mapping to genomes or read alignment to gene
sequences in order to assign taxonomy and function
[@doi:10.1002/cpz1.59]. These approaches typically focus on assigning
*individual* k-mers or reads.  In contrast, here we analyze the entire
collection of k-mers and assign them _in aggregate_ to the _best_
genome match, and then repeat until no matches remain.

The resulting minimum metagenome cover can then be used as part of further
analyses, including both taxonomic content analysis and read mapping.
For taxonomic analyses, we find that this approach is competitive with
other current approaches and has several additional conveniences
(discussed in detail below).  The comparison of hash-based estimation
of containment to mapping results in Figure @fig:mapping suggests that
this approach is an accurate proxy for systematic mapping.

Our implementation of the min-set-cov algorithm in sourmash also
readily supports using custom reference databases as well as updating
minimum metagenome covers with the addition of new reference genomes. When
updating metagenome covers with new reference genomes, the first stage of
calculating overlaps can be updated with the new genomes (Column 2 of
Table @tbl:genbank-cover), while the actual calculation of the *minimum*
set cover must be redone each time.

Minimum set cover approaches may provide opportunities beyond those
discussed here. For example, read- and contig-based analysis, and analysis
and presentation of alignments, can be potentially simplified with this
approach.

## Minimum metagenome covers support accurate and flexible taxonomic assignment

We can build a taxonomic classifier on top of minimum metagenome covers
by reporting the taxonomies of the constituent genomes,
weighted by distinct overlap and aggregated at the relevant taxonomic
level using an LCA approach.  Our CAMI-based taxonomic benchmarking shows
that this approach is competitive for all metrics across all taxonomic
levels (Figures @fig:spider and @fig:scores).

One convenient feature of this approach to taxonomic analysis is that
new or changed taxonomies can be readily incorporated by assigning
them directly to genome identifiers; the majority of the computational
work is involved in finding the reference genomes, which can have
assignments in multiple taxonomic frameworks. For example, sourmash
already supports GTDB [@doi:10.1093/nar/gkab776] natively, and will
also support the emerging LINS framework
[@doi:10.1094/PHYTO-07-16-0252-R].  sourmash can also readily
incorporate updates to taxonomies, e.g. the frequent updates to the
NCBI taxonomy, without requiring expensive reanalysis of the primary
metagenome data or even regenerating the minimum metagenome cover.

Interestingly, this framing of taxonomic classification as a minimum
set cover problem may also avoid the loss of taxonomic resolution that
affects k-mer- and read-based approaches on large databases
[@doi:10.1186/s13059-018-1554-6]; this is because we apply LCA
_after_ reads and k-mers have been assigned to individual genomes, and
choose entire *genomes* based on a greedy best-match-first approach.
This minimizes the impact of individual k-mers that may be common to
a genus or family, or were mis-assigned as a result of contamination.

Finally, as the underlying min-set-cov implementation supports custom
databases, it is straightforward to support taxonomic analysis using
*custom* databases and/or custom taxonomic assignments. This is
potentially useful for projects that are generating many new genomes
and wish to use them for metagenome analysis.  sourmash natively
supports this functionality.

<!--
## Simple algorithms support performant implementations

The algorithms underlying both _Scaled MinHash_ and the greedy
min-set-cov approximation are simple to describe and straightforward
to implement.  This increases the likelihood of correct
implementation, provides opportunities for independent optimization of
data structures, and simplifies interoperability between different
implementations.

In the sourmash software package, we provide a mature and optimized
implementation that implements all of the operations above.  sourmash
performs well in practice and supports a wide variety of use cases
(CTB: see performance in appendix, docs and tutorials at
sourmash.rtfd.io, and installation instructions for pip and conda).
The sourmash project also provides large scale databases for NCBI and
GTDB taxonomies.
-->

## The minimum set cover approach is reference dependent

The min-set-cov approach is reference-based, and hence is entirely
dependent on the reference database. This may present challenges: 
for example, in many cases the exact reference strains present in the
metagenome will not be present in the database. This manifests in two
ways in Figure @fig:mapping. First, for real metagenomes, there is a systematic mismatch
between the hash content and the mapping content (green line), because
mapping software is more permissive in the face of small variants than
k-mer-based exact matching. Moreover, many of the lower rank genomes
in the plot are from the same species but different *strains* as the
higher ranked genomes, suggesting that strain-specific portions of the
reference are being utilized for matching at lower ranks. In reality,
there will usually be a different mixture of strains in the metagenome
than is present in the reference database. Methods for updating references from
metagenome data sets may provide an opportunity for generating
metagenome-specific references [@doi:10.1186/s13059-020-02066-4].

The approach presented here chooses arbitrarily between
matches with equivalent numbers of contained k-mers. There are specific
genomic circumstances where this approach could usefully be refined with
additional criteria. For example, if a phage genome is present in the
reference database, and is also present within one or more genomes in the
database, it may desirable to select the match with the highest
Jaccard *similarity* in order to choose the phage genome. This is
algorithmically straightforward to implement when desired.

In light of the strong reference dependence of the min-set-cov
approach together with the insensitivity of the FracMinHash technique,
it may be useful to explore alternate methods of summarizing the list
of overlapping genomes, that is, summarizing *all* the genomes in column 2 of
Table @tbl:genbank-cover. For example, a hierarchical approach could
be taken to first identify the full list of overlapping genomes using
FracMinHash at a low resolution, followed by a higher resolution
approach to identify the best matching genomes.

## Opportunities for future improvement of min-set-cov

There are a number of immediate opportunities for future improvement of
the min-set-cov approach.

Implementing min-set-cov on top of FracMinHash means our approach may
incorrectly choose between very closely related genomes, 
because the set of subsampled hashes chosen may not discriminate
between them.  Likewise, the potentially very large size of the sketches
may inhibit the application of this approach to very large metagenomes.

These limitations are not intrinsic to min-set-cov, however; 
any data structure supporting both the _containment_ $C(A, B) =
\frac{\vert A \cap B \vert }{\vert A \vert}$ and _remove elements_
operations can be used to implement the greedy approximation algorithm.
For example, a simple _set_
of the $k$-mer composition of the query supports element removal, and
calculating containment can be done with regular set operations.
Approximate membership query (AMQ) sketches like the Counting
Quotient Filter [@doi:10.1145/3035918.3035963] can also be used, with
the benefit of reduced storage and memory usage.

In turn, this means that limitations of our current implementation,
such as insensitivity to small genomes when $s$ is approximately the
same as the genome size, may be readily solvable with other sketch types.

There are other opportunities for improving on these initial explorations.
The availability of abundance counts for each
element in the FracMinHash is not well explored, since the
process of _removing elements_ from the query does not use them.
This may be important for genomes with more repetitive content such as
eukaryotic genomes.

<!-- David comment: could use a compressive sensing approach here:
$ min \norm{x}^2_1 + \lambda \norm{Ax - y}^2_2, x \ge 0$
Y_i = count of hash i in sample
A_ij = count of hash i in genome j
convert to least squares and use Lawson and Hanson for blistering speed!
-->
Both the multiple match as well as the abundance counts issues can benefit from
existing solutions taken by other methods,
like the _species score_ (for disambiguation) and _Expectation-Maximization_ (for abundance analysis)
approaches from Centrifuge [@doi:10.1101/gr.210641.116].


# Conclusion

The FracMinHash and min-set-cov approaches explored here provide
powerful and accurate techniques for analyzing metagenomes, with well
defined limitations. We show that several immediate applications for both taxonomic and mapping-based analysis of metagenomes are already effective. We provide
an implementation of these approaches in robust
open-source software, together with workflows to enable their
practical use on large data sets.  The approaches also offer many
opportunities for further exploration and improvement with different
data structures, alternative approximation algorithms, and additional
summarization approaches.


# Methods

## Analytical analysis of FracMinHash

Given two arbitrary sets $A$ and $B$ which are subsets of a domain
$\Omega$, the containment index $C(A,B)$ is defined as
$C(A,B):=\frac{\vert A \cap B \vert}{\vert A \vert}$. Let $h$ be a
perfect hash function $h~:~\Omega \rightarrow~[0,H]$ for some $H\in
\mathbb{R}$. For a *scale factor* $s$ where $0 \le s \le 1$, a
FracMinHash sketch of a set $A$ is defined as follows:


```{=latex}
\begin{equation}
    %\mathbf{FRAC}_S(A) = \left\{\,h(a) \mid \forall a \in A\ {\rm s.t.}\ h(a) \leq Hs\right\}.
    \mathbf{FRAC}_S(A) = \left\{\,h(a) \mid \forall a \in A\ {\rm s.t.}\ h(a) \leq Hs\right\}.
\end{equation}
```


The scale factor $s$ is a tunable parameter that can modify the size of the sketch. Using this FracMinHash sketch, we define the FracMinHash estimate of the containment index $\hat{C}_\text{frac}(A,B)$ as follows:


```{=latex}
\begin{equation}
    \hat{C}_\text{scale}(A,B):=\frac{\vert \mathbf{FRAC}_S(A) \cap \mathbf{FRAC}_S(B)\vert }{\vert \mathbf{FRAC}_S(A)\vert}.
\end{equation}
```


For notational simplicity, we define $X_A := \vert \mathbf{FRAC}_S(A)
\vert$. Observe that if one views $h$ as a uniformly distributed
random variable, we have that $X_A$ is distributed as a binomial
random variable: $X_A \sim {\rm Binom}(|A|, s)$. Furthermore, if
$A\cap B = \emptyset$ where both $A$ and $B$ are non-empty sets, then
$X_A$ and $X_B$ are independent when the probability of success is
strictly smaller than $1$. Using these notations, we compute the
expectation of (equation).

**Theorem 1:**
For $0<s<1$, if $A$ and $B$ are two distinct sets such that $A \cap B$ is non-empty,

```{=latex}
\begin{align}
\mathrm{E}\left[\hat{C}_\text{frac}(A,B) \unicode{x1D7D9}_{\vert \mathbf{FRAC}_S(A) \vert>0} \right] =
\frac{\vert A\cap B \vert}{\vert A \vert} \left(1-(1-s)^{\vert A\vert}\right).
\end{align}
```



*Proof.* Using the notation introduced previously, observe that 


```{=latex}
\begin{align}
\hat{C}_\text{frac}(A,B) \unicode{x1D7D9}_{\vert \mathbf{FRAC}_S(A) \vert>0} = \frac{X_{A\cap B}}{X_{A\cap B} + X_{A\setminus B}} \unicode{x1D7D9}_{X_{A\cap B} + X_{A\setminus B}>0},
\end{align}
```


and that the random variables $X_{A\cap B}$ and $X_{A\setminus B}$ are independent (which follows directly from the fact that $A \cap B$ is non-empty, and because $A$ and $B$ are distinct, $A \setminus B$ is also non-empty).
We will use the following fact from standard calculus:


```{=latex}
\begin{align}
    \int_0^1 x t^{x+y-1}\, dt = \frac{x}{x+y} \unicode{x1D7D9}_{x+y>0}.
\end{align}
```


Then using the moment generating function of the binomial distribution, we have


```{=latex}
\begin{align}
    \mathrm{E}\left[t^X_{A\cap B}\right] &= (1-s+st)^{\vert A \cap B \vert}\\
    \mathrm{E}\left[t^X_{A\setminus B}\right] &= (1-s+st)^{\vert A \setminus B \vert}
\end{align}
```


We also know by continuity that 

```{=latex}
\begin{align}
    \mathrm{E}\left[X_{A\cap B} \, t^{X_{A\cap B}-1}\right] &= \frac{d}{dt} (1-s+st)^{\vert A \cap B \vert}\\
    &= \vert A\cap B \vert s (1-s+st)^{\vert A\cap B\vert-1}.
\end{align}
```


Using these observations, we can then finally calculate that 



```{=latex}
\begin{align}
    \mathrm{E}\left[\frac{X_{A\cap B}}{X_{A\cap B} + X_{A\setminus B}} \unicode{x1D7D9}_{X_{A\cap B} + X_{A\setminus B}>0},\right] &= \mathrm{E}\left[\int_0^1 X_{A\cap B} \,  t^{X_{A\cap B}+X_{A\setminus B}-1}\,dt\right]\\
    &= \int_0^1 \mathrm{E}\left[X_{A\cap B}  \, t^{X_{A\cap B}+X_{A\setminus B}-1}\,dt\right]\label{line:1}\\
    &= \int_0^1 \mathrm{E}\left[X_{A\cap B}  \, t^{X_{A\cap B}-1}\right] \mathrm{E}\left[t^X_{A\setminus B}\right]\,dt\label{line:2}\\
    &= \vert A\cap B\vert \int_0^1(1-s+st)^{\vert A\cap B \vert + \vert A\setminus B \vert -1}\, dt\\
    &= \frac{\vert A \cap B\vert (1-s+st)^{\vert A \vert}}{\vert A \vert}\bigg\rvert_{t=0}^{t=1}\\
    &= \frac{\vert A\cap B \vert}{\vert A \vert} \left(1-(1-s)^{\vert A\vert}\right),
\end{align}
```


where Fubini's theorem is used in line 2 and independence in line 3.


In light of Theorem 1, we note that (equation) is *not* an unbiased
estimate of $C(A,B)$. This may explain the observations in
[@doi:10.5281/zenodo.4057151] that show suboptimal performance for
short sequences (e.g. viruses). However, for sufficiently large $\vert
A \vert$ and $s$, the bias factor $\left(1-(1-s)^{\vert
A\vert}\right)$ is sufficiently close to 1.

The expectation of $C_\text{frac}(A,B)$ follows directly from
(equation) and Theorem 1.

**Theorem 2:** For $0<s<1$, if $A$ and $B$ are two distinct
sets such that $A \cap B$ is non-empty, the expectation of $C_\text{frac}(A, B)$ is
given by

$$
\mathrm{E} [C_\text{frac}(A,B)] = \frac{\vert A\cap B \vert}{\vert A \vert}
$$

## Implementation of FracMinHash and min-set-cov

We provide implementations of FracMinHash and min-set-cov in the
software package `sourmash`, which is implemented in Python and Rust
and developed under the BSD license
[@doi:10.21105/joss.00027]. FracMinHash sketches were created for DNA
sequence inputs using the `sourmash sketch dna` command with the
`scaled` parameter. Minimum metagenome covers were generated using
`sourmash gather` with the sketched metagenome as query against a
collection of one or more sketched genomes.

sourmash is available at
[github.com/sourmash-bio/sourmash](https://github.com/sourmash-bio/sourmash/). The
results in this paper were generated with sourmash v4.2.X. (CTB:
create new release, generate zenodo doi.)

## Comparison between CMash, mash screen, and Scaled MinHash.

Experiments use $k=\{21, 31, 51\}$ (except for Mash, which only
supports $k \le 32$).  For Mash and CMash they were run with
$n=\{1000, 10000\}$ to evaluate the containment estimates when using
larger sketches with sizes comparable to the FracMinHash sketches
with $scaled=1000$.  The truth set is calculated using an exact
$k$-mer counter implemented with a _HashSet_ data structure in the
Rust programming language [@doi:10.1145/2692956.2663188].

For _Mash Screen_ the ratio of hashes matched by total hashes is used
instead of the _Containment Score_, since the latter uses a $k$-mer
survival process modeled as a Poisson process first introduced in
[@doi:10.1186/s12864-015-1647-5] and later used in the _Mash distance_
[@doi:10.1186/s13059-016-0997-x] 
and _Containment score_ [@doi:10.1186/s13059-019-1841-x]
formulations.

CTB: include performance information.

## GenBank database sketching and searches

Minimum metagenome covers were calculated using a microbial genome
subset of GenBank (date XYZ, number of genomes ZZZ) using a scaled
factor of 2000 and a k-mer size of 31. Sketches for all genomes and
metagenomes were calculated with `sourmash sketch dna -p
scaled=2000,k=31`. The minimum metagenome covers were calculated using
all genomes sharing 100 hashes with the metagenome (that is, an
estimated overlap of 100,000 k-mers) with
`sourmash gather --threshold-bp 1e5`.
Overlapping sketches were saved with `--save-prefetch`
and matches were saved with `--save-matches`.

The GenBank database used is XYZ GB in size and is available for download
at ZZZ.

CTB: include performance information.

## Taxonomy

The CAMI evaluations were run with the sourmash CAMI pipeline
[@url:https://github.com/luizirber/2020-cami/], which generated
Open-community Profiling Assessment (OPAL) compatible output.

## Read mapping and hybrid mapping pipeline

Metagenome reads were mapped to reference genomes using minimap2 v2.17
[@doi:10.1093/bioinformatics/bty191] with short single-end read mapping mode
(`-x sr`).

The hybrid selection and mapping pipeline using the rank-ordered min-set-cov
results was implemented in the `subtract_gather.py` script that is part
of the genome-grist package.

The complete workflow, from metagenome download to taxonomic analysis
and iterative mapping, is implemented in the genome-grist package
@url:https://github.com/dib-lab/genome-grist].  genome-grist uses
snakemake [@doi:10.12688/f1000research.29032.2] to define and execute
a workflow that combines sourmash sketching, metagenome cover
calculation, and taxonomic analysis with metagenome download from the
SRA, genome download from GenBank, and read mapping.  We used
genome-grist v0.7.4 [@doi:10.5281/zenodo.5792144] to generate the results in
this paper (CTB: mention config file/put in paper data repo).
genome-grist relies on matplotlib [@doi:10.1109/MCSE.2007.55],
Jupyter Notebook [@doi:10.3233/978-1-61499-649-1-87],
numpy [@doi:10.1038/s41586-020-2649-2], pandas [@doi:10.5281/zenodo.3509134],
papermill, plotly [@doi:doi.org/10.1111/biom.13474],
samtools [@doi:10.1093/bioinformatics/btp352],
bedtools [@doi:10.1093/bioinformatics/btq033],
fastp [@doi:10.1093/bioinformatics/bty560],
khmer [@doi:10.21105/joss.00272],
screed [@url:https://screed.readthedocs.io], 
seqtk [@url:https://github.com/lh3/seqtk],
and sra-tools [@url:https://github.com/ncbi/sra-tools].
These tools are all installed and managed in snakemake via
conda [@url:https://docs.anaconda.com/]
and bioconda [@doi:10.1038/s41592-018-0046-7].

## Intermediate data products and figure generation

All figures were generated using the Jupyter Notebooks from v0.1 of
the github.com/dib-lab/2021-paper-sourmash-gather-pipelines repository
[@doi:10.5281/zenodo.5793387]. This repository also contains the
intermediate data products necessary for figure generation.

## Metagenome data set accessions

The accessions for the metagenome data sets in Table
@tbl:genbank-cover are:

| data set | SRA accession |
| -------- | ------------- |
| `zymo mock` | SRR12324253 |
| `podar mock` | SRR606249 |
| `gut real` | SRR5650070  |
| `oil well real`  | SRR1976948 |


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>


## Scaled MinHash sketches support efficient indexing for large-scale containment queries

CTB: Additional points to raise:

* in-memory representation of sketches
may be too big (!!), goal here is on disk storage/low minimum memory
for "extremely large data" situation.
* Also/in addition, want ability
to do incremental loading of things.
* Note we are not talking here
about situations where the indices themselves are too big to download.
* I think rename LCA to revindex. Or make up a new name.

We provide two index data structures for rapid estimation of
containment in large databases. The first, the MinHash Bloom Tree (MHBT),
is a specialization of the Sequence Bloom Tree [@solomon_fast_2016],
and implements a $k$-mer aggregative method with explicit representation of
datasets based on hierarchical indices. The second is LCA, an
inverted index into sketches, a color-aggregative method with implicit
representation of the sketches.

We evaluated the MHBT and LCA databases by constructing and searching
a GenBank snapshot from July 18, 2020,
containing 725,331 assembled genomes (
5,282 Archaea,
673,414 Bacteria,
6,601 Fungi
933 Protozoa and
39,101 Viral). <!-- TODO add total data size here? need to calculate... -->
MHBT indices were built with $scaled=1000$,
and LCA indices used $scaled=10000$.
Table @tbl:lca-index shows the indexing results for the LCA index,
and Table @tbl:mhbt-index for the MHBT index.

| Domain   | Runtime (s) | Memory (MB)| Size (MB) |
|:---------|------------:|-----------:|----------:|
| Viral    | 57          |         33 |         2 |
| Archaea  | 58          |         30 |         5 |
| Protozoa | 231         |          3 |        17 |
| Fungi    | 999         |          3 |        65 |
| Bacteria | 12,717      |        857 |       446 |

Table: Results for LCA indexing, with $scaled=10000$ and
$k=21$. {#tbl:lca-index}

| Domain   | Runtime (s) | Memory (MB)| Size (MB) |
|:---------|------------:|-----------:|----------:|
| Viral    | 126         | 326        | 77        |
| Archaea  | 111         | 217        | 100       |
| Protozoa | 206         | 753        | 302       |
| Fungi    | 1,161       | 3,364      | 1,585     |
| Bacteria | 32,576      | 47,445     | 24,639    |

Table: Results for MHBT indexing,
with $scaled=1000$, $k=21$ and internal nodes (Bloom Filters)
using 10000 slots for storage. {#tbl:mhbt-index}

Index sizes are more affected by the number of genomes inserted than
the individual _Scaled MinHash_ sizes.  Despite Protozoan and Fungal
_Scaled MinHash_ sketches being larger individually, the Bacterial
indices are an order of magnitude larger for both indices since they
contain two orders of magnitude more genomes.

Comparing between LCA and MHBT index sizes must account for their
different scaled parameters, but as shown in Chapter [1](#chp-scaled)
a _Scaled MinHash_ with $scaled=1000$ when downsampled to
$scaled=10000$ is expected to be ten times smaller.  Even so, MHBT
indices are more than ten times larger than their LCA counterparts,
since they store extra caching information (the internal nodes) to
avoid loading all the data to memory during search.  LCA indices also
contain extra data (the list of datasets containing a hash), but this
is lower than the storage requirements for the MHBT internal nodes.

We next executed similarity searches on each database using
appropriate queries for each domain.  All queries were selected from
the relevant domain and queried against both MHBT ($scaled=1000$) and
LCA ($scaled=10000$), for $k=21$.

|           | Viral      | Archaea    | Protozoa   | Fungi        | Bacteria      |
|:----------|-----------:|-----------:|-----------:|-------------:|--------------:|
| LCA       | 1.06       | 1.42       | 5.40       | 26.92        | 231.26        |
| SBT       | 1.32       | 3.77       | 43.51      | 244.77       | 3,185.88      |

Table: Running time in seconds for similarity search using LCA
($scaled=10000$) and MHBT ($scaled=1000$)
indices. {#tbl:search-runtime}

Table: Memory consumption in megabytes for similarity search using LCA
($scaled=10000$) and MHBT ($scaled=1000$)
indices. {#tbl:search-memory}

|           | Viral   | Archaea | Protozoa | Fungi     | Bacteria      |
|:----------|--------:|--------:|---------:|----------:|--------------:|
| LCA       |     223 |     240 |     798  |     3,274 | 20,926        |
| SBT       |     163 |     125 |     332  |     1,656 | 2,290         |

Table @tbl:search-runtime shows running time for both indices.
For small indices (Viral and Archaea) the LCA running time is
dominated by loading the index in memory, but for larger indices the
cost is amortized due to the faster running times.  This situation is
clearer for the Bacteria indices, where the LCA search completes in 3
minutes and 51 seconds, while the SBT search takes 54 minutes.

When comparing memory consumption, the situation is reversed.  Table
@tbl:search-memory shows how the LCA index consistently uses
twice the memory for all domains, but for larger indices like Bacteria
it uses as much as 10 times the memory as the MHBT index for the same
data.

For both runtime and memory consumption, it is worth pointing that the
LCA index is a tenth of the data indexed by the MHBT.  This highlights
the trade-off between speed and memory consumption for both
approaches, especially for larger indices.

Notes:
* new genomes can be added quickly to SBT.

