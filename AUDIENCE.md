# Audience

**Target:** 3rd-year students on the *Civilingenjör i bioteknik* (Master of Science in Engineering, Biotechnology) programme at Umeå University. This course (**5MO115 — Bioinformatics and genome analysis**) sits in year 3 of the 5-year programme, alongside / immediately after *Genetics and gene technology* and *Gene expression*.

## What we can expect them to know

### Biology and chemistry
- **Cell biology** at a working level: organelles, transcription, translation, the central dogma. Covered in year 2 *Tillämpad cellbiologi*.
- **Biochemistry**: proteins, enzymes, enzyme kinetics. Covered in year 2 *Biokemi — proteinkemi och enzymkinetik*.
- **Organic chemistry**: structures, common functional groups, basic reactions. Covered in year 2.
- **Genetics** at an intuitive level: DNA, genes, alleles, mutations, the basic mechanisms of inheritance. Formally covered in year 3, possibly in parallel with this course.
- They are *not* yet biologists. They have a strong engineering-style toolkit and a reasonable but not encyclopaedic biology vocabulary.

### Mathematics
- **Single-variable calculus**: derivatives, integrals, limits, Taylor expansion (year 1 *Envariabelanalys 1 + 2*). Assume rusty.
- **Linear algebra**: matrices, vectors, matrix multiplication, eigenvalues, solving linear systems (year 1). Assume rusty — they may need a refresher on the linalg side of this course.
- **Differential equations**: basic ODEs, simple analytical solutions (year 2 *Differentialekvationer*). Useful background for the simulation/bootstrap module but not heavily relied on.
- **Statistics**: probability, common distributions (normal, binomial, Poisson), hypothesis testing, t-tests, regression basics (year 1 *Statistik för teknologer*). Foundation is there; the bioinformatics-flavoured statistics in module 4 builds on it.
- **Chemometrics**: some exposure to multivariate analysis and PCA-style thinking from year 2.

### Programming
- **Python**: one introductory programming course in year 1. Assume they have forgotten plenty — basic syntax has decayed, but the *concept* of "a program is a sequence of instructions, you can put things in variables, you can write loops" is still there.
- They have seen: variables, lists, `if`/`else`, `for` loops, defining a function, importing a module, running a script.
- They have *not* recently used a programming language as a tool. Cold-start friction is real.

### General study skills
- Comfortable reading dense technical material in Swedish or English.
- Used to engineering-style problem solving: derive, compute, check units, plot.
- Some experience with lab work and lab reports.

## What we should NOT assume they know

### Programming and tooling
- **R** — entirely new. Module 1 introduces it from scratch.
- **The Linux/Unix command line** — entirely new for most. Module 2 teaches `cd`/`ls`/`grep`/`awk`/pipes from scratch.
- **HPC clusters / SLURM / SSH** — entirely new. The HPC2N instructions walk through it from zero.
- **Git, version control** — not assumed.
- **Editors beyond a basic Python IDE** — RStudio is introduced, but no assumed prior fluency.

### Bioinformatics-specific
- **File formats** — FASTQ, FASTA, GTF, GFF, SAM/BAM, VCF, BED. Introduced as encountered.
- **Sequencing technologies** — Illumina vs Nanopore vs PacBio. Discussed in module 3.
- **Tooling stack** — salmon, BWA, samtools, bcftools, vcftools, fastp, FastQC, DESeq2, STAN, mashtree, Parsnp. All introduced when first used.
- **Bioconductor** — never seen.
- **Variant calling, alignment, assembly concepts** — covered fresh.

### Mathematics and statistics they have *not* had
- **Bayesian statistics** — covered from scratch in module 4.
- **Bootstrap and resampling methods** — new.
- **Generalised linear models, mixed models** — new.
- **The negative binomial distribution and over-dispersed count data** — new.
- **Markov chains** — touched on briefly in module 1 with simple examples.
- **Phylogenetic methods (NJ, ML, parsimony, bootstrap support)** — entirely new.
- **Anything category-theoretic, measure-theoretic, or heavily abstract.** Keep things concrete.

### Software engineering / CS
- **Algorithmic complexity beyond intuition.** No prior CS course.
- **Data structures beyond list / matrix / data frame.**
- **Anything about parallelism, async, memory management.**
- **Testing / CI / Docker / virtual environments** — not assumed.

## Pedagogical implications

- **Lead with biology, not formalism.** Every new technique should be motivated by a concrete biological question (count this RNA, find this variant, build this tree). The math/code is the tool.
- **Re-derive math from scratch when needed.** Don't assume the linear algebra / calculus reflexes are fast. Worked examples, small numbers, R chunks that compute the answer alongside the formula.
- **Treat R as a "second language."** They have one programming course under their belt but it was Python, a year or two ago. Be explicit about R idioms (1-based indexing, `<-` vs `=`, vectorisation, data frames) — don't assume they map cleanly from Python.
- **Spend real time on the command line and on HPC2N.** It's not "obvious." Module 2 is a substantial lift, not a refresher.
- **Default to intro-level extra exercises.** Optional / "extra exercise material" sections should be solvable with the concepts taught in the module, not assume external reading. Save graduate-level content for explicit "deep reading" pointers.
- **Use callouts (Hint / Solution) so students can self-pace.** They will move at different speeds — make it easy to peek, but try first.
- **Explain every bioinformatics tool the first time it appears**, even one-liners like `wc -l`, `gzip`, `wget`. Don't expect command-line muscle memory.
- **Don't drown them in jargon.** When you must use a term (MAPQ, N50, padj, contig, k-mer), define it inline the first time.
- **Engineering audience cue.** They are comfortable with formulas and quantitative reasoning — show the math when it's pedagogically useful. They are *not* mathematicians — skip proofs unless they teach something.
