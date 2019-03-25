# Static Nix

An exploration on creating an alterative way to generate nix derivations.

# Why?

The Nix-Expression language is extremely powerful.  This is great for writing your own nix expressions, but can make it hard to understand code written by others.  There seems to be a set of common techniques used to generate derivations but Nix allows so many ways to do it which means you have to re-learn how everyone else has implemented the same mechanism.

This project is an attempt to use those same techniques but to do so in a way that looks the same.  It's taking a subset of what the Nix Expression Language provides in an attempt to make derivation generation simpler and more consistent.

# Build

```
./iso build ./build
```

# TODO:

I'd like to try to use the actual nix library to implement this.

See `libstore/derivations.hh`.

