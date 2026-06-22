# Ethereum Verification Benchmark Paper

IEEE short-paper draft for Blockchain Confluence / ICDLT 2026:

**Ethereum Verification Benchmark: Evaluating AI Agents on Lean 4 Proofs for Smart Contracts**

The paper is built from the official IEEEtran conference class and supports both double-anonymous and author builds.

## Build

```bash
make anonymous
make author
```

Outputs:

- `build/paper-anonymous.pdf`
- `build/paper-author.pdf`

The default table generator reads `../verity-benchmark`, expected to be a
checkout of `lfglabs-dev/ethereum-verification-benchmark` at tag `v0.1`.
Override it with:

```bash
make BENCHMARK_DIR=/path/to/verity-benchmark
```

## Notes

- Anonymous mode hides author metadata, acknowledgments, and direct GitHub repository identifiers in the manuscript body.
- Author mode identifies Thomas Marchand and links the public benchmark artifact.
- Generated tables are derived from `benchmark-versions/v0.1.json` and `results/summaries/v0.1.json`.
