---
author-meta:
- Luiz Irber
- C. Titus Brown
bibliography:
- content/manual-references.json
date-meta: '2020-10-15'
header-includes: '<!--

  Manubot generated metadata rendered from header-includes-template.html.

  Suggest improvements at https://github.com/manubot/manubot/blob/master/manubot/process/header-includes-template.html

  -->

  <meta name="dc.format" content="text/html" />

  <meta name="dc.title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta name="citation_title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta property="og:title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta property="twitter:title" content="Lightweight compositional analysis of metagenomes with sourmash gather" />

  <meta name="dc.date" content="2020-10-15" />

  <meta name="citation_publication_date" content="2020-10-15" />

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

  <link rel="alternate" type="text/html" href="https://dib-lab.github.io/2020-paper-sourmash-gather/v/cfe9b4dce49090eaed16aaf6f102a70b3d9cb0f8/" />

  <meta name="manubot_html_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/cfe9b4dce49090eaed16aaf6f102a70b3d9cb0f8/" />

  <meta name="manubot_pdf_url_versioned" content="https://dib-lab.github.io/2020-paper-sourmash-gather/v/cfe9b4dce49090eaed16aaf6f102a70b3d9cb0f8/manuscript.pdf" />

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
([permalink](https://dib-lab.github.io/2020-paper-sourmash-gather/v/cfe9b4dce49090eaed16aaf6f102a70b3d9cb0f8/))
was automatically generated
from [dib-lab/2020-paper-sourmash-gather@cfe9b4d](https://github.com/dib-lab/2020-paper-sourmash-gather/tree/cfe9b4dce49090eaed16aaf6f102a70b3d9cb0f8)
on October 15, 2020.
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





# Introduction

Compositional data analysis is the study of the parts of a whole using relative abundances [@doi:10.1111/j.2517-6161.1982.tb01195.x].
This is a general problem with applications across many scientific fields [@aitchison_compositional_2005],
and examples in biology include RNA-Seq [@quinn_field_2019-1],
metatranscriptomics [@macklaim_rna-seq_2018],
microbiome and metagenomics [@li_microbiome_2015].
Taxonomic profiling is a particular instance of this general problem
with the goal of finding the identity and relative abundance of microbial community elements
at a specific taxonomic rank (species, genus, family),
especially in metagenomic samples [@sczyrba_critical_2017].

Existing taxonomic profilers use different methods to solve this problem,
including aligning sequences to a reference database [@huson_megan_2016],
using marker genes derived from known organisms from reference databases [@segata_metagenomic_2012]
or coupled with unknown organisms clustered from metagenomes [@milanese_microbial_2019],
and exact $k$-mer matching using fixed $k$ and lowest common ancestor (LCA) for resolving
$k$-mer assignments matching multiple taxons from a reference database
[@wood_kraken:_2014] or variable $k$ and assigning multiple taxons per sequence,
with an option to reduce it further to the LCA [@kim_centrifuge_2016].

Once each sequence (from raw reads or assembled contigs) has a taxonomic assignment,
<!-- David comment: "Not all profiles classify sequences. See Focus, Quikr, Metalign, Metapalette, etc" -->
these methods resolve the final identity and abundance for each member of the community by summarizing the assignments to a specific taxonomic rank,
Taxonomic profiling is fundamentally limited by the availability of reference datasets to be used for assignments,
and reporting what percentage of the sample is unassigned is important to assess results,
especially in undercharacterized environments such as oceans and soil.



# Results

## Scaled MinHash sketches support containment operations

* scaled minhash supports similarity and containment

We define the Scaled MinHash on an input domain of $k$-mers, $W$, as follows:

$$\mathbf{SCALED}_s(W) = \{\,w \leq \frac{H}{s} \mid \forall w \in
W\,\}$$ where $H$ is the largest possible value in the domain of
$h(x)$ and $\frac{H}{s}$ is the \emph{maximum hash} value in the
Scaled MinHash.

The Scaled MinHash is a mix of MinHash and ModHash (@cite broder).  As
in the former it keeps the smallest elements, and from the latter it
adopts the dynamic size to allow containment estimation.  However,
instead of taking $0 \mod m$ elements like $\mathbf{MOD}_m(W)$, a
Scaled MinHash uses a parameter $s$ to select a subset of $W$.

Given a uniform hash function $h$ and $s=m$, the cardinalities of
$\mathbf{SCALED}_s(W)$ and $\mathbf{MOD}_m(W)$ converge for large
$\vert W \vert$.  The main difference is the range of possible values
in the hash space, since the Scaled MinHash range is contiguous and
the ModHash range is not.  Figure @ref shows an example
comparing MinHash, ModHash and Scaled MinHash with the same parameter
value.

Intuitively, Scaled MinHash is performing a density sampling at a rate
of 1 $k$-mer per $s$ k-mers seen.

Scaled MinHash permits Jaccard containment estimation between two data sets
directly from the sketch ...

A drawback of Scaled MinHash when compared to regular MinHash sketches
is the size: the MinHash parameter $s$ sets an upper bound on the size
of the sketch, independently of the size of the original data.  Scaled
MinHash sketches grow proportionally to the original data cardinality,
and in the worst case can have up to $\frac{H}{s}$ items.

_Scaled MinHash_ sketches offer a fixed range of possible hash values,
but with reduced sensitivity for small datasets when using larger $s$
(scaled) values.  A biological example are viruses: at $s=2000$ many
viruses are too small to consistently have a hashed value selected by
the _Scaled MinHash_ approach.  Other _MinHash_ approaches sidestep
the problem by using hashing and streaming the query dataset (`Mash
Screen`) or loading the query dataset into an approximate query
membership data structure (`CMash`) to allow comparisons with the
variable range of possible hash values, but both solutions require the
original data or a more limited data representation than _Scaled
MinHash_.  The consistency of operating in the same data structure
also allows further methods to be develop using only _Scaled MinHash_
sketches and their features, especially if large collections of
_Scaled MinHash_ sketches are available.

Others have also applied the ModHash concept to genomic data; see, for
example, Durbin's "modimizer"
[@https://github.com/richarddurbin/modimizer].

## Scaled MinHash accurately estimates containment between sets of different sizes

* compares well with others
* supports large-scale sketching of genbank
* How much is missed figure; Poisson calculations?

We next compare the _Scaled MinHash_ method implemented in `smol` to
CMash (_Containment MinHash_) and Mash Screen (_Containment Score_)
for containment queries in the Shakya dataset
[@doi:10.1111/1462-2920.12086 ], a synthetic mock metagenomic
bacterial and archaeal community where the reference genomes are
largely known.  This data set has been used in several methods evaluations
[@awad_evaluating_2017,@ondov_mash_2019]]. (CTB add SPADes etc refs.)

![
**Letter-value plot [@hofmann_letter-value_2017] of the
differences from containment estimate to ground truth (exact).**
Each method is evaluated for $k=\{21,31,51\}$,
except for `Mash` with $k=51$,
since `Mash` doesn't support $k>32$.
**A**: Using all 68 reference genomes found in previous articles.
**B**: Excluding low coverage genomes identified in previous articles.
](images/containment.svg "Containment estimation between smol, CMash, and mash screen"){#fig:containment}

All methods are within 1\% of the exact containment on average (Figure
@fig:containment A), with `CMash` consistently underestimating
the containment for large $k$ and overestimating for small $k$.  `Mash
Screen` with $n=10000$ has the smallest difference to ground truth for
$k=\{21, 31\}$, followed by `smol` with `scaled=1000` and `Mash
Screen` with $n=1000$.

Figure @fig:containment B shows results with low-coverage and
contaminant genomes (as described in [@awad_evaluating_2017] and
[@ondov_mash_2019]) removed from the database.  The number of outliers
is greatly reduced, with most methods within 1\% absolute difference
to the ground truth.  `CMash` still has some outliers with up to 8\%
difference to the ground truth.

CTB questions:

* runtimes?
* should we _just_ use (B) benchmark?
* should we add sketch sizes in here more explicitly? e.g. number of hashes kept?
* Where does "Scaled MinHash sketch sizes across GenBank domains"
go? (Chp 01 from Luiz thesis)

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

## Metagenome sketches can be accurately decomposed into constituent genomes by a greedy algorithm, 'gather'

* compare conceptually vs LCA approaches; combinatorial. do we want to do a benchmark of some kind wrt LCA saturation?

We define a greedy algorithm, `gather`, that uses a top-down approach to
decompose _Scaled MinHash_ sketches into constituent sketches.
Starting from the $k$-mer composition of the query, `gather`
iteratively finds a match in a collection of datasets with the largest
_containment_ of the query (most elements in common), and creates a new
query by _removing elements_ in the match from the original query.
The process stops when the new query doesn't have any more matches in
the collection, or a user-provided minimum detection threshold is
reached.

<!-- David comment: "I'm surprised this works, since back in 2015
(Metapalette days) I found removing elements like this caused the
approach to fall apart when closely-related organisms are in the
metagenome.)  -->

Algorithm [1](\ref{alg:gather}) describes the `gather` method using a generic operation
`FindBestContainment`.
An implementation for `FindBestContainment` for a list of datasets is presented in
Algorithm [2](\ref{alg:list}).

```{=latex}
\RestyleAlgo{boxruled}
\LinesNumbered
\begin{algorithm}[ht]
   \label{alg:gather}
   \DontPrintSemicolon
   \SetKwInOut{Input}{Input}
   \SetKwInOut{Output}{Output}
   \SetKwBlock{Loop}{Loop}{}
   \SetKwFunction{FindBestContainment}{FindBestContainment}
   \SetKwFunction{Remove}{Remove}
   \SetKwFunction{AppendToMatches}{AppendToMatches}
   \Input{query $Q$}
   \Input{a collection $C$ of reference datasets}
   \Input{a containment threshold $T$}
   \Output{a list of matches $M$ from $C$ contained in $Q$}
   \BlankLine
   $M \leftarrow \emptyset$\;
   $Q' \leftarrow Q$\;
   \Loop {
       $(best, M) \leftarrow \FindBestContainment(Q', C, T)$\;
       \If{$M = \emptyset$ }{
           break\;
       }
       $\AppendToMatches(M)$\;
       $Q' \leftarrow \Remove(M, Q')$\;
   }
   \KwRet{matches}
   \caption{The gather method}
\end{algorithm}

\begin{algorithm}[ht]
  \label{alg:list}
  \DontPrintSemicolon
  \SetKwInOut{Input}{Input}
  \SetKwInOut{Output}{Output}
  \SetKwFunction{containment}{containment}
  \SetKwBlock{Loop}{Loop}{}
  \Input{query $Q$}
  \Input{a list $C$ of reference datasets}
  \Input{a containment threshold $T$}
  \Output{the containment $b$ and the match $m$ for $m \in C$ with best containment $b$ in $Q$, or $\emptyset$ if no match above threshold}
  \BlankLine
  $b \leftarrow T$\;
  $m \leftarrow \emptyset$\;
  \For{$c \in C$}{
     $containment \leftarrow \containment(c,Q)$\;
     \If{$containment \ge b$ }{
       $b \leftarrow containment$\;
       $m \leftarrow c$\;
     }
  }
  \KwRet{$(b, m)$}
  \caption{a \emph{FindBestContainment} implementation for a list}
\end{algorithm}
```

Any data structure supporting both the _containment_ $C(A, B) =
\frac{\vert A \cap B \vert }{\vert A \vert}$ and _remove elements_
operations can be used as a query with `gather`.  For example, a _set_
of the $k$-mer composition of the query supports element removal, and
calculating containment can be done with regular set operations.
Approximate membership query (AMQ) sketches like the _Counting
Quotient Filter_ [@pandey_general-purpose_2017] can also be used, with
the benefit of reduced storage and memory usage.  Moreover, the
collection of datasets can be implemented with any data structure that
can do containment comparisons with the query data structure.  Here it
can be important to have performant containment searches, since
`gather` may run `FindBestContainment` many times.

Since _Scaled MinHash_ supports both containment estimation and
element removal, we implemented `gather` on top of _Scaled MinHash_
and evaluated its performance in finding the number of reads that
should map to genomes in a database. CTB: circle back around to talk
about what the point of gather is: The value is in finding (a) the
correct genomes and (b) the bits that are unique.

We evaluated `gather`s performance on the Shakya data as used above,
against GenBank, and compared the genome containment estimation with
read mapping. In Figure XXX, we show that gather accurately estimates
both the multimapped reads and the set of reads that maps uniquely to
his genome.  (CTB: revisit CMash/mash screen papers here to see how
they evaluated. Also, maybe mention sgc gbio paper and recovery of new
genome.)

## Taxonomic profiling based on 'gather' is accurate

* CAMI results
* suggests gather/greedy decomposition is pretty good

Taxonomic profiling in `sourmash` is built as an extra step on top of
the `gather` algorithm.  `gather` returns assignments to a dataset in
a collection, and based on that assignment the extra step associates a
taxonomic ID and lineage with that genome. Lineages are then summarized
at each taxonomic rank for all of the taxonomies in that data set.

To evaluate the performance of taxonomic profiling, we used the mouse
gut metagenome dataset [@meyer_tutorial_2020] from the Critical
Assessment of Metagenome Intepretation (CAMI)
[@sczyrba_critical_2017], a community-driven initiative for
reproducibly benchmarking metagenomic methods.
The simulated
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
long-read (PacBio) sequencing data is available.

![
Comparison per taxonomic rank of methods in terms of completeness, purity (1% filtered), and L1 norm.
](images/spider_plot_relative.svg){#fig:spider}

![
Performance per method at all major taxonomic ranks, with the shaded bands showing the standard deviation of a metric.  In **a** and **b**, completeness, purity, and L1 norm error range between 0 and 1.  The L1 norm error is normalized to this range and is also known as Bray-Curtis distance.  The higher the completeness and purity, and the lower the L1 norm, the better the profiling performance.
](images/ranks_by_tool.svg){#fig:ranks}

![
Methods rankings and scores obtained for the different metrics over all samples and taxonomic ranks.  For score calculation, all metrics were weighted equally.
](images/scores.svg){#fig:scores}


Figure @fig:spider, @fig:ranks, @fig:scores is an updated version of Figure 6 from [@meyer_tutorial_2020] including `sourmash`,
comparing 10 different methods for taxonomic profiling and their characteristics at each taxonomic rank. 
While previous methods show reduced completeness,
the ratio of taxa correctly identified in the ground truth,
below the genus level,
`sourmash` can reach 88.7\% completeness at the species level with the highest
purity (the ratio of correctly predicted taxa over all predicted taxa) across
all methods:
95.9\% when filtering predictions below 1\% abundance,
and 97\% for unfiltered results.
`sourmash` also has the lowest L1-norm error
(the sum of the absolute difference between the true and predicted abundances at
a specific taxonomic rank),
the highest number of true positives and the lowest number of false positives.

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

# Discussion

## Scaled MinHash offers benefits, drawbacks vs regular MinHash

TODO: add abundance tracking in to either methods or results; gather bench?

_Scaled MinHash_ is an implementation of ModHash using concepts from
MinHashing. _Scaled MinHash_ sketches support a variety of options
that are convenient for compositional queries - most specifically,
containment, but also guarantees on hash occurrence, streaming, hash
removal, abundance tracking, and downsampling.  Importantly, _Scaled
MinHash_ sketches can be generated once for large data sets and then used
for containment searches after that, unlike CMash and mash screen.

In exchange for these features, _Scaled MinHash_ sketches have limited
sensitivity for small queries and are bounded in size by H/s, which
is usually quite large - so, practically speaking, they grow unbounded
wtih the input size.

Once a Scaled MinHash is calculated there are many operation that can
be applied without depending on the original data, saving storage
space and allowing scaling analysis to thousands of datasets.  Most of
these operations are also possible with MinHash and ModHash, with
caveats.  One example of these operations is \emph{downsampling}: the
contiguous value range for Scaled MinHash sketches allow deriving
$\mathbf{SCALED}_{s'}(W)$ sketches for any $s' \ge s$ using only
$\mathbf{SCALED}_{s}(W)$.  MinHash and ModHash can also support this
operation, as long as $n' \le n$ and $m'$ is a multiple of $m$.

Because Scaled MinHash sketches collect any value below a threshold
this also guarantees that once a value is selected it is never
discarded.  This is useful in streaming contexts: any operations that
used a previously selected value can be cached and updated with new
arriving values.  $\mathbf{MOD}_m(W)$ has similar properties, but this
is not the case for $\mathbf{MIN}_n(W)$, since after $n$ values are
selected any displacement caused by new data can invalidate previous
calculations.

Abundance tracking is another extension to MinHash sketches, keeping a
count of how many times a value appeared in the original data.  This
allows filtering for low-abundance values, as implemented in Finch
[@bovee_finch:_2018], another MinHash sketching software for genomics.
Filtering values that only appeared once was implemented before in
Mash by using a Bloom Filter and only adding values after they were
seen once, with later versions also implementing an extra counter
array to keep track of counts for each value in the MinHash.

TODO: discuss here how abundance tracking in MinHash is not "correct",
because it is not a proper weighted subsample of the data?
Note that Scaled MinHash is a proper weighted subsample.

Other operations are adding and subtracting hash values from a Scaled
MinHash sketch, allowing post-processing and filtering.  Although
possible for $\mathbf{MIN}_n(W)$, in practice this requires
oversampling (using a larger $n$) to account for possibly having less
than $n$ values after filtering (the approach taken by Finch
[@bovee_finch:_2018]).

### Scaled minhash has limitations vs regular minhash

virus, etc. (could go in first discussion section, but also deserves
to be highlighted)

## Gather works surprisingly well and matches simple data structures

We next ask, what is a minimal collection of genomes necessary to
explain the content of a metagenome? This problem can be framed
bioinformatically as asking, for a given metagenome $M$, what is the
smallest collection of genomes in the database $D$ to which all mappable
reads in $M$ will be mapped. That is, it is the smallest collection of
genomes that explain the observed reads, absent reads for which there is
no reference genome.

If we treat both $M$ and all the genomes in $D$ as colletions of
k-mers, this problem can be framed as a set covering problem: find the
minimum set $\{ G_n \}$ of genomes in $D$ such that the intersection of
the k-mers in $M$ and the union of k-mers across $\{G_n\}$ equals the
intersection of k-mers in $M$ with the union of k-mers in $D$.

The gather algorithm implements the greedy min-set-cover solution to this
problem; this is a a known polynomial-time approximation algorithm.

Taxonomic results suggest that this is a pretty good approach.

Our implementation of gather does not currently select the set of
smallest genomes, but rather the smallest set of genomes. If there are
two genomes with equal containment of the k-mers, it is arbitrary as
to which one is chosen.

gather is a straightforward algorithm for "decomposing" compositional
data. It can take advantage of efficient data structures for containment
because it's "just" k-mers.

`gather` is a new method for decomposing datasets into its components
that outperforms current method when using synthetic datasets with
known composition.  By leveraging _Scaled MinHash_ sketches and
efficient indexing data structures it can scale the number of
reference datasets used by over an order of magnitude when compared to
existing methods.

The `gather` approach differs from previous methods by considering the
*co-occurrence* of $k$-mers between the query and a database sketch as
a strong signal that the k-mers originate from that database sketch.

xx can we guess at places where gather would break?

Other containment estimation methods such as
_CMash_ [@koslicki_improving_2019] and _mash screen_ [@ondov_mash_2019],
can also implement `gather`.
<!-- David comment: "CMash does kinda, but uses unique k-mers instead
of removing matches like gather does. CMash commit
https://github.com/dkoslicki/CMash/commit/de7bdd6fa --> Running a
search requires access to the original dataset (_mash screen_) for the
query, or a Bloom Filter derived from the original dataset (_CMash_),
and when the collection of reference sketches is updated the Bloom
Filter from _CMash_ can be reused, but _mash screen_ needs access to
the original dataset again.

(Maybe already covered above, or maybe should be moved to "gather can
be applied to all the data"?)
Since _Scaled MinHash_ sketches allow using the sketch directly for
`gather`, which are a fraction of the original data in size and also
allow enumerating all the elements, an operation not possible with
Bloom Filters, they can be stored and reused for large collections of
sequencing datasets, including public databases like the Sequence Read
Archive [@leinonen_sequence_2011].  A service that calculate these
_Scaled MinHash_ sketches and make them available can improve
discoverability of these large collections, as well as support future
use cases derived from other _Scaled MinHash_ features.

## Taxonomy results are excellent.

Discuss vs LCA/saturation, slash reference the LCA-has-limits/k-mers
saturate paper

Mix and match taxonomies is easy b/c we anchor to genomes.

Compared to previous taxonomic profiling methods, _Scaled MinHash_ can
also be seen as a mix of two other approaches: It uses exact $k$-mer
matching and assignment, and the $k$-mers selected by the MinHashing
process are equivalent to implicitly-defined markers.  It differs from
previous approaches because only a subset of the $k$-mer composition
is used for matching, and traditional gene markers are explicitly
chosen due to sequence conservation and low mutation rates, while
MinHashing $k$-mers generates a randomized, but consistent across
datasets, set of marker $k$-mers.

## Algorithm is simple, computational performance is great

Performant implementation in sourmasha Python API for data exploration
and methods prototyping.

### Gather can be applied to all the data.

<!-- Scaling to large collections of references --> Taxonomic
profiling is fundamentally limited by the availability of reference
datasets, even if new reference datasets can be derived from
clustering possible organisms based on sequence data in metagenomes
[@milanese_microbial_2019].  `gather` as implemented in `sourmash` is
a method that can scale to increasingly larger collections of datasets
due to multiple reasons:

  - containment and similarity estimation with _Scaled MinHash_
    sketches has lower computational requirements than alignment over
    all reads of a dataset;

  - since _Scaled MinHash_ sketches use a subset of the $k$-mer
    composition, they also scale better than full $k$-mer composition
    representations, requiring less space and reducing the number of
    elements to be computed;

  - querying multiple databases can be done independently, avoiding
    the need to merge, update or reprocess databases when new datasets
    are available.  A new database with the new datasets can be
    constructed and queried together with previous ones.

<!-- TODO to make this point I need more info about the other
databases used...  I don't think they were calculated from the refseq
snapshot https://github.com/CAMI-challenge/data/issues/2 These aspects
allowed the `sourmash` database to be include the largest number of
reference datasets of all methods compared, -->

<!-- dependency on taxonomic assignments -->

Taxonomic profiling in `sourmash` is implemented as an extra step on
top of `gather` results.  Because these steps are independent of the
dataset assignment that `gather` generates, updates to the taxonomy
don't require re-executing `gather`, since the taxonomic information
can be derived from the same dataset identifier (but potentially with
a new associated taxonomic ID).  This allows using new taxonomies
derived from the same underlying datasets [@parks_standardized_2018],
as well as updates to the original taxonomy used before.

<!-- Benchmarking --> Despite improvements to standardization and
reproducibility of previous analysis, benchmarking taxonomic profiling
tools is still challenging, since tools can generate their reference
databases from multiple sources and choosing only one source can bias
or make it impossible to evaluate them properly.  This is especially
true for real metagenomic datasets derived from samples collected from
soil and marine environments, where the number of unknown organisms is
frequently larger than those contained in reference databases.  With
the advent of metagenome-assembled genomes (MAGs) there are more
resources available for usage as reference datasets, even if they are
usually incomplete or draft quality.  `sourmash` is well positioned to
include these new references to taxonomic profiling given the minimal
requirements (a _Scaled MinHash_ sketch of the original dataset) and
support for indexing hundreds of thousands of datasets.

### Limitations of gather

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

### Future directions for gather

In this chapter `gather` is described in terms of taxonomic profiling
of metagenomes.  That is one application of the algorithm, but it can
applied to other biological problems too.  If the query is a genome
instead of a metagenome, `gather` can be used to detect possible
contamination in the assembled genome by using a collection of genomes
and removing the query genome from it (if it is present).  This allows
finding matches that contain the query genome and evaluating if they
agree at specific taxonomic rank, and in case of large divergence (two
different phyla are found, for example) it is likely to indicative
that the query genome contains sequences from different organisms.
This is especially useful for quality control and validation of
metagenome-assembled genomes (MAGs), genomes assembled from reads
binned and clustered from metagenomes, as well as a verification
during submission of new assembled genomes to public genomic databases
like GenBank.

Improvements to the calculation of _Scaled MinHash_ sketches can also
improve the taxonomic profiling use case.  Exact $k$-mer matching is
limited in phylogenetically distant organisms, since small nucleotide
differences lead to distinct $k$-mers, breaking homology
assumptions. <!-- TODO verify/cite? --> Different approaches for
converting the datasets into a set to be hashed (_shingling_) than
computing the nucleotide $k$-mer composition, such as spaced $k$-mers
[@leimeister_fast_2014] and minimizers [@roberts_reducing_2004] and
alternative encodings for the nucleotides using 6-frame translation to
amino acid [@gish_identification_1993] or other reduced alphabets
[@peterson_reduced_2009], can allow comparisons on longer evolutionary
distances and so improve taxonomic profiling by increasing the
sensitivity of the containment estimation.  These improvements don't
fundamentally change the `gather` method, since it would still be
based on the same *containment* and *remove element* operations, but
show how `gather` works as a more general method that can leverage
characteristics from different building blocks and explore new or
improved use cases.

`gather` is a new method for decomposing datasets into its components
with application in biological sequencing data analysis (taxonomic
profiling) that can scale to hundreds of thousands of reference
datasets with computational resources requirements that are accessible
to a large number of users when used in conjunction with _Scaled
MinHash_ sketches and efficient indices such as _LCA_ and _MHBT_.  It
outperforms current methods in community-develop benchmarks, and opens
the way for new methods that explore a top-down approach for profiling
microbial communities, including further refinements that can resolve
larger evolutionary distances and also speed up the method
computationally.

### XXX SBT and LCA indices

_Scaled MinHash_ sketches are fundamentally a subset of the $k$-mer
composition of a dataset, and so any of the techniques described in
[@marchet_data_2019] are potential candidates for improving current
indices or implementing new ones.  The MHBT index can be improved by
using more efficient representations for the internal nodes
[@solomon_improved_2017] and constructing the MHBT by clustering
[@harris_improved_2018], and the LCA index can use more efficient
storage of the list of signatures IDs by representing the list as
colors [@pandey_mantis:_2018].  The memory consumption of the LCA
index can also be tackled by implementing it in external memory using
memory-mapped files, letting the operating system cache and unload
pages as needed.

Current indices are also single-threaded, and don't benefit from
multicore systems.  Both indices can be used in parallel by loading as
read-only and sharing for multiple searches, but is is also possible
to explore parallelization for single queries by partitioning the LCA
and assigning each partition to a thread, as well as using a
work-stealing thread pool for expanding the search frontier in the
MHBT in parallel.  In any case, the current implementations serve as a
baseline for future scalability and can be used to guide optimization
and avoid extraneous overhead and common failings of such projects
[@mcsherry_scalability_2015].

### Database types work well

"online" approaches

`sourmash gather`, the command-line interface that adds further user
experience improvements to the API level, also allows passing multiple
indices to be searched, providing incremental support for rerunning
with additional data without having to recompute, merge or update the
original databases.

Some limitations of gather and database types (equal results can be
hard to detect efficiently with current SBT implementation)

The Linear index is appropriate for operations that must check every
signature, since it doesn't have any indexing overhead.  An example is
building a distance matrix for comparing signatures all-against-all.
Search operations greatly benefit from extra indexing structure.  The
MHBT index and $k$-mer aggregative methods in general are appropriate
for searches with query thresholds, like searching for similarity or
containment of a query in a collection of datasets.  The LCA index and
color aggregative methods are appropriate for querying which datasets
contain a specific query $k$-mer.

As implemented in sourmash, the MHBT index is more memory efficient
because the data can stay in external memory and only the tree
structure for the index need to be loaded in main memory, and data for
the datasets and internal nodes can be loaded and unloaded on demand.
The LCA index must be loaded in main memory before it can be used, but
once it is loaded it is faster, especially for operations that need to
summarize $k$-mer assignments or require repeated searches.

Due to these characteristics, and if memory usage is not a concern,
then the LCA index is the most appropriate choice since it is faster.
The MHBT index is currently recommended for situations where memory is
limited, such as with smaller scaled values ($s\le2000$) that increase
the size of signatures, or when there are a large number (hundreds of
thousands or more) of datasets to index.

### Converting between indices

Both MHBT and LCA index can recover the original sketch collection.
In the MHBT case, it outputs all the leaf nodes.  In the LCA index, it
reconstruct each sketch from the hash-to-dataset-ID mapping.  This
allows trade-offs between storage efficiency, distribution, updating
and query performance.

Because both are able to return the original sketch collection, it is
also possible to convert one index into the other.

### gather Conclusion

_Scaled MinHash_ sketches allow scaling analysis to thousands of
datasets, but efficiently searching and sharing them can benefit from
data structures that index and optimize these use cases.  This chapter
introduces an index abstraction that can be trivially implementing
using a list of sketches (_Linear index_) and more advanced
implementations based on inverted indices (_LCA index_) and
hierarchical indices (_MHBT_) providing options for fast and
memory-efficient operations, as well as making it easier to share and
analyze collections of sketches.  All these functionalities are
implemented in sourmash.

## Limitations and future directions

(For _Scaled MinHash_, `gather`, and taxonomy. Move where? Conclusions?)

(From David Koslicki)
Gotchas:

* Lack of sensitivity for small queries
* Potentially large sketch sizes

And a couple other that I’ve tentatively/mathematically observed:

* The variance of the estimate of C(A,B)=|A\cap B| / |A| appears to
  also depend on |A\B|, which was somewhat surprising
* The “fixed k-size” problem (which might be able to be overcome with
  the prefix-lookup data structure, if one sacrifices some accuracy)

_Scaled MinHash_ sketches are fundamentally a subset of the $k$-mer
composition of a dataset, and so any of the techniques described in
[@marchet_data_2019] are potential candidates for improving current
indices or implementing new ones.  The MHBT index can be improved by
using more efficient representations for the internal nodes
[@solomon_improved_2017] and constructing the MHBT by clustering
[@harris_improved_2018], and the LCA index can use more efficient
storage of the list of signatures IDs by representing the list as
colors [@pandey_mantis:_2018].  The memory consumption of the LCA
index can also be tackled by implementing it in external memory using
memory-mapped files, letting the operating system cache and unload
pages as needed.

Current indices are also single-threaded, and don't benefit from
multicore systems.  Both indices can be used in parallel by loading as
read-only and sharing for multiple searches, but is is also possible
to explore parallelization for single queries by partitioning the LCA
and assigning each partition to a thread, as well as using a
work-stealing thread pool for expanding the search frontier in the
MHBT in parallel.  In any case, the current implementations serve as a
baseline for future scalability and can be used to guide optimization
and avoid extraneous overhead and common failings of such projects
[@mcsherry_scalability_2015].

_Scaled MinHash_ sketches allow scaling analysis to thousands of
datasets, but efficiently searching and sharing them can benefit from
data structures that index and optimize these use cases.  This chapter
introduces an index abstraction that can be trivially implementing
using a list of sketches (_Linear index_) and more advanced
implementations based on inverted indices (_LCA index_) and
hierarchical indices (_MHBT_) providing options for fast and
memory-efficient operations, as well as making it easier to share and
analyze collections of sketches.  All these functionalities are
implemented in `sourmash`, a software package exposing these features
as a command-line program as well as a Python API for data exploration
and methods prototyping.

These indices also serve as another set of building blocks for
constructing more advanced methods for solving other relevant
biological problems like taxonomic profiling, described in Chapter
[3](#chp-gather), and approaches for increasing the resilience and
shareability of biological sequencing data, described in Chapter
[5](#chp-decentralizing).

# Conclusion

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

## Implementation of Scaled MinHash

We provide two implementations of Scaled MinHash, `smol` and
`sourmash`.  `smol` is a minimal implementation of _Scaled MinHash_
developed to demonstrate the method; it does not include many required
features for working with real biological data, but its smaller code
base makes it a more readable and concise example of the method.
`sourmash` [@doi:10.21105/joss.00027] implements features and
functionality needed for large scale analyses of real data.

## Comparison between CMash, mash screen, and Scaled MinHash.

Experiments use $k=\{21, 31, 51\}$ (except for Mash, which only
supports $k \le 32$).  For Mash and CMash they were run with
$n=\{1000, 10000\}$ to evaluate the containment estimates when using
larger sketches with sizes comparable to the Scaled MinHash sketches
with $scaled=1000$.  The truth set is calculated using an exact
$k$-mer counter implemented with a _HashSet_ data structure in the
Rust programming language [@matsakis_rust_2014].

For _Mash Screen_ the ratio of hashes matched by total hashes is used
instead of the _Containment Score_, since the latter uses a $k$-mer
survival process modeled as a Poisson process first introduced in
[@fan_assembly_2015] and later used in the _Mash distance_
[@ondov_mash:_2016] and _Containment score_ [@ondov_mash_2019]
formulations.

## MHBT

The _MinHash Bloom Tree_ (_MHBT_) is a variation of the _Sequence
Bloom Tree_ (_SBT_) that uses Scaled MinHash sketches as leaf nodes
instead of Bloom Filters as in the SBT.  The search operation in SBTs
is defined as a breadth-first search starting at the root of the tree,
using a threshold of the original $k$-mers in the query to decide when
to prune the search.  MHBTs use a query Scaled MinHash sketch instead,
but keep the same search approach.  The threshold of a query $Q$
approach introduced in [@solomon_fast_2016] is equivalent to the
containment $$C(Q, S) = \frac{\vert Q \cap S \vert }{\vert S \vert}$$
described in [@broder_resemblance_1997], where $S$ is a Scaled MinHash
sketch.  For internal nodes $n$ (which are Bloom Filters) the
containment of the query Scaled MinHash sketch $Q$ is
$$
C(Q, n) = \frac{\vert \{\,h \in n \mid \forall h \in Q\,\} \vert}{\vert Q
   \vert}
$$
as defined by
[@koslicki_improving_2019] for the _Containment MinHash_ to _Bloom
Filter_ comparison.

MHBTs support both containment and similarity queries.
For internal nodes the containment $C(Q,n)$ is used as an upper-bound of the similarity $J(Q, n)$:
$$C(Q, n) &\ge J(Q, n) \\
  \frac{\vert Q \cap n \vert }{\vert Q \vert} \ge \frac{\vert Q \cap n \vert }{\vert Q \cup n \vert}
  $$
since $\vert Q \cup n \vert \ge \vert Q \vert$.
When a leaf node is reached then the similarity $J(Q, S)$ is calculated for the Scaled MinHash sketch $S$
and declared a match if it is above the threshold $t$.
Because the upper-bound is being used,
this can lead to extra nodes being checked,
but it simplifies implementation and provides better correctness guarantees.

## Inverted index

The LCA index in `sourmash` is an inverted index that stores a mapping
from hashes in a collection of signatures to a list of IDs for
signatures containing the hash.  Despite the name, the list of
signature IDs is not collapsed to the lowest common ancestor (as in
kraken), and is calculated as needed by downstream methods using
taxonomy information stored separately in the LCA index.

The mapping from hashes to signature IDs in the LCA index is an
implicit representation of the original signatures used to build the
index, and so returning the signatures is implemented by rebuilding
the original signatures on-the-fly.  Search in an LCA index matches
the $k$-mers in the query to the list of signatures IDs containing
them, using a counter data structure to sort results by number of
hashes per signature ID.  The rebuilt signatures are then returned as
matches based on the signature ID, with containment or similarity to
the query calculated against the rebuilt signatures.

mash screen [@ondov_mash_2019] has a similar index, but it is
constructed on-the-fly using the distinct hashes in a sketch
collection as keys, and values are counters initially set to zero.  As
the query is processed, matching hashes have their counts incremented,
and after all hashes in the query are processed then all the sketches
in the collection are checked in the counters to quantify the
containment/similarity of each sketch in the query.  The LCA index
uses the opposite approach, opting to reconstruct the sketches
on-the-fly.



## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
