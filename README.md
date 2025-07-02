# <img src="https://raw.githubusercontent.com/dsbfelipe/readme-banners/main/images/odin-project.png">

<img align="right" src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white">

<br>
<br>

The Custom Enumerable project is all about demystifying Ruby’s powerful `Enumerable` module by recreating its most commonly used methods from scratch. Instead of relying on built-in iterators, this project shows how blocks, `yield`, and custom method definitions work under the hood.

This project is part of my journey through the Ruby course and helped strengthen my understanding of iterators, blocks, modules, and test-driven development.

## 📝 Project Objective

The goal of this project was to recreate popular `Enumerable` methods like `each`, `map`, `select`, and `inject`. By doing so, I gained a deeper appreciation for how Ruby handles iteration and block execution behind the scenes.

Each method was implemented to work primarily with arrays (and optionally with hashes for an extra challenge). Before writing each method, I ran the provided RSpec tests to watch them fail, then wrote the method until all tests passed.

The project emphasizes not only method implementation but also understanding Ruby’s `yield` keyword and how to reopen existing modules and classes.

## 🔧 Features

- **Rebuilt Enumerable Methods**: Reimplemented several core methods, including:

  - `each`

  - `each_with_index`

  - `select`

  - `all?`

  - `any?`

  - `none?`

  - `count`

  - `map`

  - `inject`

- **RSpec Testing**: Each method was verified against a test suite to ensure identical behavior to the original Ruby methods.

- **Blocks & Procs Practice**: Improved understanding of passing blocks and calling yield.

## 📖 Learnings

- **Metaprogramming Basics**: Practiced extending and reopening core Ruby modules and classes.

- **Yield & Blocks**: Improved understanding of how `yield` hands off execution to blocks.

- **Testing with RSpec**: Practiced test-driven development by letting tests guide each implementation.

- **Enumerable Internals**: Gained insight into how Ruby’s iteration methods actually work.

## 💻 Technologies Used

- **Ruby** for implementing the functionality of the substrings method.

- **RSpec** for testing and validating each custom method.

## 💡 Acknowledgments

- **The Odin Project**: For providing the project outline and guidance.
