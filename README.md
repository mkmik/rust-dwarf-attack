# Rustack

* What are the with mimimal DWARF info required to correctly get rust to print stack traces?
* What are the right flags used to tune the generation of such DWARF info?

## How to run the experiment

```console
$ cargo build --release
...
$ section-sizes.sh ./target/release/rustack
...
```

