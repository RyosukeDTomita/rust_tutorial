# rust

## ツール類

### rustup

- rustのインストールやバージョン管理を行うことができるツール
- [公式サイト](https://rustup.rs/)
- rustcやcargoなども一括でインストールされる。

### rustc

rustのコンパイラ

### cargo

- rustのビルドシステム兼パッケージマネージャ
- `Cargo.toml`でプロジェクト管理する。

> [!NOTE]
> Rustではパッケージのことをクレート(Crate)と呼ぶ。

```shell
cargo new プロジェクト名
cargo clean
cargo check # コンパイルできるかチェックする
cargo build
cargo run
```

#### リリースに向けたビルド

`--release`をつけると最適化が行われ、コンパイル時間が長くなる代わりに実行速度が速くなる。

```shell
cargo build # target/debugに
cargo build --release # target/releaseに
```

---
