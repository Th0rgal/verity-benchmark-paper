# Verity Benchmark Paper

IEEE short-paper draft for Blockchain Confluence / ICDLT 2026:

**Ethereum Verification Benchmark: An Open Suite for Evaluating AI Agents at Generating Lean 4 Proofs of Smart Contract Correctness**

The paper is built from the official IEEEtran conference class and supports both double-anonymous and author builds.

## Build

```bash
make anonymous
make author
```

Outputs:

- `build/paper-anonymous.pdf`
- `build/paper-author.pdf`

The default table generator reads `../verity-benchmark`. Override it with:

```bash
make BENCHMARK_DIR=/path/to/verity-benchmark
```

## Notes

- Anonymous mode hides author metadata, acknowledgments, and direct GitHub repository identifiers in the manuscript body.
- Author mode identifies Thomas Marchand and links the public benchmark artifact.
- Generated tables are derived from `benchmark-versions/v0.1.json` and `results/summaries/v0.1.json`.
