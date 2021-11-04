---
title: Lightweight compositional analysis of metagenomes with sourmash gather
keywords:
- k-mers
- MinHash
lang: en-US
date-meta: '2021-11-04'
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
  <meta name="dc.date" content="2021-11-04" />
  <meta name="citation_publication_date" content="2021-11-04" />
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
  <link rel="alternate" type="text/html" href="https://dib-lab.github.io/2020-paper-sourmash-gather/v/f3e90d752aedebab63bb63adf92560899f640b55/" />
  <meta name="manubot_html_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/f3e90d752aedebab63bb63adf92560899f640b55/" />
  <meta name="manubot_pdf_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/f3e90d752aedebab63bb63adf92560899f640b55/manuscript.pdf" />
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
([permalink](https://dib-lab.github.io/2020-paper-sourmash-gather/v/f3e90d752aedebab63bb63adf92560899f640b55/))
was automatically generated
from [dib-lab/2020-paper-sourmash-gather@f3e90d7](https://github.com/dib-lab/2020-paper-sourmash-gather/tree/f3e90d752aedebab63bb63adf92560899f640b55)
on November 4, 2021.
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

The assignment of genomes and taxonomy to metagenome data underlies
many microbiome studies. Here we describe two algorithms for
compositional analysis of metagenome sequencing data. We first develop
a sketching technique, _Scaled MinHash_, that
supports Jaccard containment estimation between sets of different size.
We implement _Scaled MinHash_ in the sourmash software and demonstrate
large-scale containment searches of metagenomes using all 700,000 currently
available microbial reference genomes.
We next frame shotgun
metagenome compositional analysis in terms of min-set-cover, i.e. as
the problem of finding a minimum collection of reference genomes
that "cover" the known k-mers in a metagenome. We implement a greedy
approximate solution using  _Scaled MinHash_ sketches, and evaluate
its accuracy in taxonomic assignment using a CAMI community benchmark.
Finally, we show that the minimum set cover can be used for accurate read
mapping.
sourmash is available as open source under the
BSD 3-Clause license at github.com/dib-lab/sourmash/.


# Introduction

Shotgun metagenomics samples the DNA sequence content of microbial
communities.

Compositional analysis of shotgun metagenome samples has the goal of
identifying what reference genomes to use for functional and
taxononomic interpretation of metagenome content.

The substantial increase in the number of available reference genomes
presents a significant practical obstacle to comprehensive
compositional analyses.

Here, we describe a lightweight and scalable approach to compositional
analysis of shotgun metagenome data. Our approach tackles the
selection of appropriate reference genomes for downstream analysis and provides a
computationally efficient method for taxonomic classification of
metagenome data.

We first define _Scaled MinHash_, an extension of MinHash sketching
that supports containment estimation for metagenome
datasets using k-mers.  We implement _Scaled MinHash_ in a Python and
Rust package, `sourmash`, and show that it is competitive in
accuracy with other containment estimation approaches.

We next frame reference-based metagenome content analysis as a
min-set-cov problem, where we determine the _minimum_ number of
genomes from a reference database needed to cover the identifiable
genomic content from a metagenome.  We implement a
best-polynomial-time greedy approximation to the min-set-cov problem
using _Scaled MinHash_ in `sourmash`. This technique provides an
iteractive decomposition of metagenomes into genome matches.

To evaluate the accuracy of our min-set-cov procedure, we implement a
simple taxonomic classification approach in which we use the taxonomy
of the genomes from the set cover to define the taxonomy of the
metagenome content. We show that this permits precise and lightweight
classification of metagenome content across all taxonomic levels.

Finally, we show that the minimum set covers for several metagenomes
contain only a small subset of reference genomes even when using very
large and redundant databases, and demonstrate that this subset can be
used to map the metagenome reads in concordance with the estimates
from _Scaled MinHash_. Thus, _Scaled MinHash_ combined with
min-set-cov provides a lightweight, accurate, and scalable way to
estimate the composition of metagenomes using a large reference
database.


# Results

## Scaled MinHash sketches support accurate containment operations

We define the Scaled MinHash on an input domain of $k$-mers, $W$, as follows:

$$\mathbf{SCALED}_s(W) = \{\,w \leq \frac{H}{s} \mid \forall w \in
W\,\}$$ where $H$ is the largest possible value in the domain of
$h(x)$ and $\frac{H}{s}$ is the \emph{maximum hash} value in the
Scaled MinHash.

The Scaled MinHash is a mix of MinHash and ModHash
[@doi:10.1109/SEQUEN.1997.666900].  It keeps the selection of the
smallest elements from MinHash, while using the dynamic size from
ModHash to allow containment estimation.  However, instead of taking
$0 \mod m$ elements like $\mathbf{MOD}_m(W)$, a Scaled MinHash uses the
parameter $s$ to select a subset of $W$.

Scaled MinHash supports containment estimation with high accuracy and
low bias. **(Analytic work from David HERE.)**

* approximation formula (eqn 13 from overleaf)
* for queries into large sets (large $|A|$), bias factor is low.
* refer to appendix for derivation.

Given a uniform hash function $h$ and $s=m$, the cardinalities of
$\mathbf{SCALED}_s(W)$ and $\mathbf{MOD}_m(W)$ converge for large
$\vert W \vert$.  The main difference is the range of possible values
in the hash space, since the Scaled MinHash range is contiguous and
the ModHash range is not.  This permits a variety of convenient
operations on the sketches, including iterative downsampling of Scaled
MinHash sketches as well as conversion to MinHash sketches.

## A Scaled MinHash implementation accurately estimates containment between sets of different sizes

We compare the _Scaled MinHash_ method to CMash (_Containment
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
](images/containment.svg "Containment estimation between smol, CMash, and mash screen"){#fig:containment}

Figure @fig:containment shows containment analysis of genomes in this metagenome, with low-coverage and
contaminant genomes (as described in [@doi:10.1101/155358] and
[@doi:10.1186/s13059-016-0997-x]) removed from the database.
All methods are within 1\% of the exact containment on average (Figure
@fig:containment), with `CMash` consistently underestimating
the containment for large $k$ and overestimating for small $k$.  `Mash
Screen` with $n=10000$ has the smallest difference to ground truth for
$k=\{21, 31\}$, followed by `smol` with `scaled=1000` and `Mash
Screen` with $n=1000$.

CTB TODO:

* switch figure to use sourmash

## We can use Scaled Min-Hash to construct a minimum set cover for metagenomes

We next ask: what is the smallest collection of genomes in a database
that contains all of the known k-mers in a metagenome?
Formally, for a
given metagenome $M$ and a reference database $D$, what is the minimum
collection of genomes in $D$ which contain all of the k-mers in the
intersection of $D$ and $M$? That is, we wish to find the smallest set
$\{ G_n \}$ of genomes in $D$ such that $$k(M) \cap k(D) = \bigcup_n
\{ k(M) \cap k(G_n) \} $$

This is the *minimum set covering* problem, for which there is a
polynomial-time approximation [@doi:10.1007/978-0-387-30162-4_175].
**(Provide algorithm here.)**

This greedy algorithm iteratively subtracts k-mers
belonging to the genome that has the highest containment count from
the metagenome (ref alg above).  This results in a progressive
classification of the known k-mers in the metagenome to specific
genomes, in rank order of number of contained hashes. Note that in
cases where equivalent matches are available at a particular rank,
a match is chosen at random.

In Figure @fig:gather0, we show the results of this iterative
decomposition of the mock metagenome from
[@doi:10.1111/1462-2920.12086], into constituent genome matches.  The
high rank (early) matches reflect large and/or mostly-covered genomes
with high containment, while later matches reflect smaller genomes,
lower-covered genomes, and/or genomes with substantial overlap with
earlier matches. Where there are overlaps between genomes, shared
common k-mers are "claimed" by higher rank matches and only k-mer
content specific to the later genome is used to identify the lower
rank matches. For example, genomes from two strains of *Shewanella
baltica* present in the mock metagenome in Figure @fig:gather0 have
an approximately 50% overlap in k-mer content, and these shared k-mers
are claimed by *Shewanella baltica* OS223 (compare *Shewanella
baltica* OS223, rank 8, with *Shewanella baltica* OS185, rank 33; the
difference between the red circles and green triangles for
*S. baltica* OS185 represents the k-mers claimed by *S. baltica*
OS223). (CTB: maybe indicate or highlight these genomes in the figure?)

For this mock metagenome, 205m (54.8%) of 375m k-mers were found in
GenBank.  The remaining 169m (45.2%) k-mers had no matches, and
represent either k-mers introduced by sequencing errors or unknown k-mers from
real community members.

![
**K-mer decomposition of a metagenome into constituent genomes.**
A rank ordering by remaining containment for the first 36 genomes from the minimum set cover
of the synthetic metagenome from [@doi:10.1111/1462-2920.12086],
calculated against a database containing 700,000
genomes from GenBank. The Y axis is labeled with the NCBI-designed name of the
genome.
In the left plot, the X axis represents the estimated number of k-mers shared
between each genome and the metagenome. The red circles indicate the number
of matching k-mers that were not matched at previous ranks, while the green triangle symbols indicate all matching k-mers.
In the right plot, the X axis represents the estimated k-mer coverage of that
genome.  The red circles indicate the percentage of the genome covered by k-mers remaining at
that rank, while the green triangle symbols indicate total coverage with all
k-mers in the metagenome, including those already assigned at previous ranks.
](images/gathergram-SRR606249.hashes.svg "minimum set cover for podar"){#fig:gather0}

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

Since min-set-cov yields only a collection of genomes rather than a
species list, we generated a taxonomic profile from a given metagenome
cover through the following procedure. For each genome match, we noted
the species designation in the NCBI taxonomy for that genome. Then, we
calculated the fraction of the genome remaining in the metagenome
after k-mers belonging to higher-rank genomes have been removed (red
circles in Figure @fig:gather0 (a)). We used this fraction to weight
the contribution of the genome's species designation towards the
metagenome taxonomy. This procedure produces an estimate of that
species' taxonomic contribution to the metagenome, normalized by the
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
has the lowest L1-norm error,
<!-- (the sum of the absolute difference
between the true and predicted abundances at a specific taxonomic
rank) -->
the highest number of true positives and the lowest number of
false positives.

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
sample took 597 seconds to run (on average), totalling 10 hours and 37
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
| `zymo mock` (SRR12324253) | 405,839 | 19 | XX% |
| `podar mock` (SRR606249) | 5800 | 74 | 54.8% |
| `gut real` (SRR5650070)  | 96,423     | 99     | 36.0% |
| `oil well real` (SRR1976948) | 1235 | 135 | 14.9% |

Table: Four metagenomes and their estimated minimum set cover from GenBank. {#tbl:genbank-cover}

In Table @tbl:genbank-cover, we show the results of running min-set-cov
for four metagenomes against GenBank - two mock communities 
[@https://www.zymoresearch.com/collections/zymobiomics-microbial-community-standards;@doi:10.1111/1462-2920.12086], one human gut microbiome data set
from iHMP [@doi:10.1038/s41586-019-1238-8], and an oil well sample
[@doi:10.1128/mBio.01669-15].  Our implementation provides estimates
for both the *total* number of genomes with substantial overlap to a
query genome, and a *minimum list* of genomes that account for k-mers
with overlap in the query metagenome (see Methods).

We find many genomes with large overlaps for each metagenome, due to
the redundancy of the reference database. For example, `zymo mock`
contains a *Salmonella* genome, and there are over 200,000 Salmonella
genomes that match to it in Genbank. Likewise, `gut real`
matches to over 75,000 *E. coli* genomes in GenBank.  Since neither
`podar mock` nor `oil well real` contain genomes from species with
substantial representation in genbank, they yield many fewer total
overlapping genomes.

However, regardless of the number of genomes in the database with substantial
overlap, the
estimated _minimum_ collection of genomes is always much smaller than the
number of genomes with overlaps. In
the cases where the k-mers in the metagenome are mostly identified,
this is because of database redundancy: e.g. in the case of `zymo
mock`, the min-set-cov algorithm chooses only one Salmonella genome
from the 200,000+ available. Conversely, in the case of `oil well real`,
much of the sample is not identified,
suggesting that the small size of the covering set is because much
of the sample is not represented in the database.

CTB TODO: add % identified to table!

## Minimum metagenome covers provide representative genomes for mapping

Mapping metagenome reads to representative genomes is an important
step in many microbiome analysis pipelines, but mapping approaches
struggle with large, redundant databases.  One specifc use for a minimum
metagenome cover is to select a small set of representative genomes
for mapping.  We therefore developed a hybrid selection and
mapping pipeline that uses the rank-ordered min-set-cov results to
map reads to candidate genomes.

We first map all reads to all genomes in the minimum set cover, and
then successively remove reads that map to higher rank genomes from
lower rank genomes, and remap the remaining reads. That is, all reads
mapped to the rank-1 genome in Figure @fig:gather0 are removed from
the rank-2 genome mapping, and all reads mapping to rank-1 and rank-2
genomes are removed from the rank-3 genome mapping, and so on. This produces
results directly analogous to those presented in Figure @fig:gather0,
but for reads rather than k-mers (CTB: provide as Suppl Figure?).
Importantly, in this process we only consider genomes identified in
the minimum set cover, because it is computationally intractable to map
reads to the entire GenBank database. (CTB: check centrifuge.)

Figure @fig:mapping compares hash assignment rates
and mapping rates for the four evaluation metagenomes in Table
@tbl:genbank-cover. Broadly speaking, we see that k-mer based
estimates of metagenome composition align closely with the number of
bases covered by mapped reads. This suggests that the k-mer based min-set-cov
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
**Hash-based decomposition of a metagenome into constituent
genomes compares well to bases covered by read mapping.** 
The reference genomes are rank ordered along the x axis (as in Figure @fig:gather0), based on the largest number of hashes from the metagenome specific to that genome; hence the number of hashes classified for each genome (red circles) is monotonically decreasing.
The y axis shows number of hashes (k-mers) classified to this genome (red circles) or total number of bases in the reference covered by mapped reads (blue stars); the numbers have not been rescaled.
Decreases in mapping (green peaks) occur for genomes which are not
exact matches to the genomes of the organisms used to build the mock
community 
[@doi:10.1101/155358;@doi:10.1186/s13059-016-0997-x].
](images/gather-podar.svg "gather results for podar"){#fig:mapping}

CTB: make note that numbers have not been rescaled in text.


# Discussion

## Scaled MinHash provides efficient containment queries for large data sets.

_Scaled MinHash_ is an implementation of ModHash that uses the bottom
hashing concept from MinHash to support containment operations. In
brief, all elements in the set to be sketched are hashed, and any hash values
below a certain fixed boundary value are kept for the sketch. This fixed boundary
value is determined by the desired accuracy for the sketch
representation.

Intuitively, _Scaled MinHash_ performs a density sampling at a rate of 1
$k$-mer per $s$ distinct k-mers seen, where $s$ is the size of the
hash space divided by the boundary value used in creating the
sketch. This is a type of lossy compression, with a fixed compression
ratio of $s$: for values of $s$ used here ($s \approx
1000$), data sets are reduced in size 1000-fold.

Unlike MinHash, _Scaled MinHash_ supports containment estimation between
sets of very different sizes, and here we demonstrate that it can be
used efficiently and effectively for compositional analysis of shotgun
metagenome data sets with k-mers. In particular, _Scaled MinHash_ is
competitive in accuracy with extant MinHash-based techniques for
containment analysis, while also supporting Jaccard similarity.[^durbin]

[^durbin]: We note that others have also applied the ModHash concept to
genomic data; see, for example, Durbin's "modimizer"
[@https://github.com/richarddurbin/modimizer].

_Scaled MinHash_ offers several conveniences over _MinHash_.  No hash
is ever removed from a _Scaled MinHash_ sketch during construction;
while this means that sketches grow proportionally to the number of
distinct k-mers in the sampled data set, sketches _also_ support many
operations - including all of the operations used in this paper -
without needing to revisit the original data set. This is in contrast
to MinHash, which requires auxiliary data structures for many
operations - most especially, containment operations (cite CMash and
mash screen).  Thus Scaled MinHash sketches serve as distributed
compressed indices for the original content for a much broader range
of operations than MinHash.

Because _Scaled MinHash_ sketches collect all hash values below a
fixed threshold, they also support streaming analysis of sketches: any
operations that used a previously selected value can be cached and
updated with newly arriving values.  ModHash has similar
properties, but this is not the case for MinHash, since
after $n$ values are selected any displacement caused by new data can
invalidate previous calculations.

Scaled MinHash also directly supports the addition and subtraction of
hash values from a sketch, allowing post-processing and filtering without
revisiting the original data set. This includes unions and intersections.
Although possible for MinHash, in practice this requires
oversampling (using a larger $n$) to account for possibly having less
than $n$ values after filtering; this approach is taken by Finch, another
MinHash sketching software for genomics [@doi:10.21105/joss.00505].

When the multiplicity of hashes in the original data is retained,
_Scaled MinHash_ sketches can be filtered on abundance.  This allows
removing low-abundance values, as implemented in Finch
[doi:10.21105/joss.00505].  Filtering values that only appear once
was implemented in Mash by using a Bloom Filter and only adding values
after they were seen once, with later versions also implementing an
extra counter array to keep track of counts for each value in the
MinHash.  These operations can be done in _Scaled MinHash_ without
auxiliary data structures.

Another useful operation available on _Scaled MinHash_ sketches is
*downsampling*: the contiguous value range for Scaled MinHash sketches
allows deriving MinHash sketches from _Scaled MinHash_ sketches
whenever the number of hashes in the _Scaled MinHash_ sketch is equal
to or greater than $n$, as long as the same hashing scheme is used.
Likewise, MinHash sketches can be converted to _Scaled MinHash_
sketches when the maximum hash value in the MinHash sketch is larger
than $s$.

Finally, because _Scaled MinHash_ sketches are simply collections of
hashes, existing k-mer indexing approaches can be applied to the
sketches to support fast search with both similarity and containment estimators; several index types,
including Sequence Bloom Trees and reverse indices, are provided in
the sourmash software.

In exchange for these many conveniences, _Scaled MinHash_ sketches
have limited sensitivity for small data sets where the k-mer
cardinality of the data set $\approx s$, and are only bounded in size
by $H/s$ (typically quite large, $\approx 2e16$).  The limited
sensitivity of sketches may affect the sensitivity of gene- and viral
genome-sized queries, but at $s=1000$ we see comparable accuracy and
sketch size to MinHash for bacterial genome comparisons (Figure
@fig:containment).

## Minimum set covers can be used for accurate compositional analysis of metagenomes.

Many metagenome content analysis approaches use reference genomes to
interpret the metagenome content, but most such approaches rely on a
curated list of non-redundant genomes from a much larger database
(e.g. bioBakery 3 selects approximately 100,000 genomes [@doi:10.7554/eLife.65088]).  Here, we search an arbitrarily large database to retrieve
a *minimum* set of reference genomes necessary to account for all k-mers
shared between the metagenome and the database. We show that
this can be resolved efficiently for real-world data sets; using _Scaled MinHash_ with a greedy min-set-cov algorithm, we provide an approach that
readily scales to 700,000 genomes on current hardware (performance in
appendix). Moreover, this procedure reduces the number of genomes
under consideration to $\approx 100$ for several mock and real
metagenomes.

The development of a small list of relevant genomes is particularly
useful for large reference databases containing many redundant
genomes; for example, in Table @tbl:genbank-cover, we show that for one particular
mock community, we can select a minimum metagenome cover of 19 genomes
for a metagenome that contains matches to over 400,000 GenBank genomes total.

This minimum metagenome cover can then be used as inputs for further
analysis, including both taxonomic content analysis and mapping
approaches.  For taxonomic analyses, we find that this approach is
competitive with other current approaches and has many additional
conveniences (discussed in detail below).  The comparison of
hash-based estimation of containment to mapping results in Figure
@fig:mapping suggests that this approach may be an accurate proxy for
systematic mapping.

This min-set-cov approach for assigning genomes to metagenomes using
k-mers differs substantially from extant k-mer and mapping-based
approaches for identifying relevant genomes.  LCA-based approaches
such as Kraken label individual k-mers based on taxonomic lineages in
a database, and then use the resulting database of annotated k-mers to
assign taxonomy to reads. Mapping- and homology-based approaches such
as Diamond read mapping to genomes or read alignment to
gene sequences in order to assign taxonomy and function (cite). These
approaches typically focus on assigning *individual* k-mers or reads.
In contrast, here we analyze the entire collection of k-mers and
assigns them _in aggregate_ to the _best_ genome match.

Our implementation of the min-set-cov algorithm in sourmash also
readily supports custom reference databases as well as updating
minimum set covers with the addition of new reference genomes. When
updating set covers, the first stage of calculating overlaps can be
updated with the new genomes (Column 2 of Table @tbl:genbank-cover),
while the actual calculation of the minimum set cover must be redone
each time.

Our implementation of min-set-cov on top of _Scaled MinHash_ means
that there is a loss of resolution when choosing between very closely
related genomes, because the set of hashes chosen may not discriminate
between them. This is not intrinsic to min-set-cov, however; 
any data structure supporting both the _containment_ $C(A, B) =
\frac{\vert A \cap B \vert }{\vert A \vert}$ and _remove elements_
operations can be used to implement the greedy approximation algorithm
(ref algorithm in results section 1).
For example, a simple _set_
of the $k$-mer composition of the query supports element removal, and
calculating containment can be done with regular set operations.
Approximate membership query (AMQ) sketches like the _Counting
Quotient Filter_ [@doi:10.1145/3035918.3035963] can also be used, with
the benefit of reduced storage and memory usage.  Moreover, the
collection of datasets can be implemented with any data structure that
can do containment comparisons with the query data structure.

The min-set-cov approach is reference-based, and hence is entirely
dependent on the reference database. In particular, in many cases the
exact reference strains present in the metagenome will not be present
in the database. This manifests in two ways in Figure
@fig:mapping. First, there is a systematic mismatch between the hash
content and the mapping content (green line), because mapping software
is more permissive in the face of small variants than k-mer-based
exact matching. Moreover, many of the lower rank genomes in the plot
are from the same species but different *strains* as the higher ranked
genomes, suggesting that strain-specific portions of the reference are
being utilized for matching at lower ranks. In reality, there will
usually be a different mixture of strains in the metagenome than in
the reference database. Approaches such as spacegraphcats may help
resolve this by adapting old references [@doi:10.1186/s13059-020-02066-4].

CTB TODO:

* can we guess at places where gather would break? One is equivalent
containment/different genome sizes, e.g. virus/phage contained within
other genomes.

## Minimum metagenome covers support accurate and flexible taxonomic conversation

We can build a taxonomic classifier on top of minimum set covers for metagenomes
by reporting the taxonomies of the constituent genomes, aggregated at
the relevant taxonomic level using an LCA approach.  Our initial
taxonomic benchmarking shows that this approach is competitive for all
metrics across all taxonomic levels (Figures @fig:spider and @fig:scores).

One convenient feature of this approach to taxonomic analysis is that
new or changed taxonomies can be readily incorporated by assigning
them directly to genome identifiers; the majority of the computational
work is involved in finding the reference genomes, which can have
assignments in different taxonomic frameworks. For example, sourmash
already supports GTDB [@doi:10.1093/nar/gkab776] natively, and will
also support the emerging LINS framework
[@doi:10.1094/PHYTO-07-16-0252-R].  sourmash can also readily
incorporate updates to taxonomies, e.g. the frequent updates to the
NCBI taxonomy, without requiring expensive reanalysis of the primary
metagenome data or the min-set-cov computation.

Interestingly, the framing of taxonomic classification as a minimum
set cover problem may also avoid the loss of taxonomic resolution that
affects k-mer- and read-based approaches on large databases
[@doi:10.1186/s13059-018-1554-6]; this is because we apply LCA
_after_ reads and k-mers have been assigned to individual genomes, and
choose entire *genomes* based on a greedy best-match-first approach.

Finally, as the underlying min-set-cov implementation supports custom
databases, it is straightforward to support taxonomic analysis using
custom databases and/or custom taxonomic assignments. sourmash
already supports this natively.

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

## Limitations of our approach

CTB: write/clean up the below.

`gather` as implemented in `sourmash` has the same limitations as
_Scaled MinHash_ sketches, including reduced sensitivity to small
genomes/sequences such as viruses.  _Scaled MinHash_ sketches don't
preserve information about individual sequences, and short sequences
using large scaled values have increasingly smaller chances of having
any of its $k$-mers (represented as hashes) contained in the sketch.
Because it favors the best containment, larger genomes are also more
likely to be chosen first due to their sketches have more elements,
and further improvements can take the size of the match in
consideration too.  Note that this is not necessarily the _similarity_
$J(A, B)$ (which takes the size of both $A$ and $B$), but a different
calculation that normalizes the containment considering the size of
the match.

`gather` is also a greedy algorithm, choosing the best containment
match at each step.  Situations where multiple matches are equally
well contained or many datasets are very similar to each other can
complicate this approach, and additional steps must be taken to
disambiguate matches.  The availability of abundance counts for each
element in the _Scaled MinHash_ is not well explored, since the
process of _removing elements_ from the query doesn't account for them
(the element is removed even if the count is much higher than the
count in the match).
<!-- David comment: could use a compressive sensing approach here:
$ min \norm{x}^2_1 + \lambda \norm{Ax - y}^2_2, x \ge 0$
Y_i = count of hash i in sample
A_ij = count of hash i in genome j
convert to least squares and use Lawson and Hanson for blistering speed!
-->
Both the multiple match as well as the abundance counts issues can benefit from
existing solutions taken by other methods,
like the _species score_ (for disambiguation) and _Expectation-Maximization_ (for abundance analysis)
approaches from Centrifuge [@kim_centrifuge_2016].

(From David Koslicki)
Gotchas:

* Lack of sensitivity for small queries
* Potentially large sketch sizes

And a couple other that I’ve tentatively/mathematically observed:

* The variance of the estimate of C(A,B)=|A\cap B| / |A| appears to
  also depend on |A\B|, which was somewhat surprising
* The “fixed k-size” problem (which might be able to be overcome with
  the prefix-lookup data structure, if one sacrifices some accuracy)

## We belieeeeeeeve

CTB: write/clean up the below.

min set cov could be applied in many more circumstances - read based analysis,
contig based analysis, maybe variant calling, etc.

Mention weighted cover cc David?

Note that here we are providing one approach / approximation (Scaled
MinHash containment) with one shingling approach (k-mers) to tackle
metagenome composition for mapping and taxonomy. The min-set-cover
approach could be used with exact containment, and/or with other
shingling approaches.

CTB: discuss centrifuge, etc. Could this be impemented on top of that?


# Conclusion

CTB: write this.

* scaled min hash is powerful, with well defined limitations.
* gather is awesome and convenient.
* taxonomy is awesome and overcomes limitations of many current approaches.
* sourmash is robust software that provides a practically usable implementation of these ideas.
* future directions...

_Scaled MinHash_ sketches are simple to implement and analyze, with
consistent guarantees for the range of values and subsetting
properties when applied to datasets.  Containment and similarity
operations between _Scaled MinHash_ sketches avoid the need to access
the original data or more limited representations that only allow
membership query, and serve as a proxy for large scale comparisons
between hundreds or thousands of datasets.

Small genomes require low scaled values in order to properly estimate
containment and similarity, and exact $k$-mer matching is brittle when
considering evolutionarily-diverged organisms.  While some of these
problems can be overcome in future work, _Scaled MinHash_ sketches can
serve as a prefilter for more accurate and computationally expensive
applications, allowing these methods to be used in larger scales by
avoiding processing data that is unlikely to return usable results.

_Scaled MinHash_ sketches are effective basic building blocks for
creating a software ecosystem that allow practical applications,
including taxonomic classification in metagenomes and large scale
indexing and searching in public genomic databases.



# Methods

TBD


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

