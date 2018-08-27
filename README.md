# transrate

This repository contains Dockerfile used to make Docker images of Transrate 1.0.3

# description:

Transrate is software for de-novo transcriptome assembly quality analysis. It examines your assembly in detail and compares it to experimental evidence such as the sequencing reads, reporting quality scores for contigs and assemblies. This allows you to choose between assemblers and parameters, filter out the bad contigs from an assembly, and help decide when to stop trying to improve the assembly.

source: http://hibberdlab.com/transrate/

# help:

```h
Transrate v1.0.3
by Richard Smith-Unna, Chris Boursnell, Rob Patro,
   Julian Hibberd, and Steve Kelly

DESCRIPTION:
Analyse a de-novo transcriptome assembly using three kinds of metrics:

1. sequence based (if --assembly is given)
2. read mapping based (if --left and --right are given)
3. reference based (if --reference is given)

Documentation at http://hibberdlab.com/transrate

USAGE:
transrate <options>

OPTIONS:
  --assembly=<s>            Assembly file(s) in FASTA format, comma-separated
  --left=<s>                Left reads file(s) in FASTQ format, comma-separated
  --right=<s>               Right reads file(s) in FASTQ format, comma-separated
  --reference=<s>           Reference proteome or transcriptome file in FASTA format
  --threads=<i>             Number of threads to use (default: 8)
  --merge-assemblies=<s>    Merge best contigs from multiple assemblies into file
  --output=<s>              Directory where results are output (will be created) (default: transrate_results)
  --loglevel=<s>            Log level. One of [error, info, warn, debug] (default: info)
  --install-deps=<s>        Install any missing dependencies. One of [ref]
  --examples                Show some example commands with explanations
```
