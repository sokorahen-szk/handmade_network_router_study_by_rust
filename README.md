https://zenn.dev/t13801206/books/rust-router-jisaku/

## 04作業環境をつくる
作業環境をつくるときに以下のシェルスクリプトを実行してやれば、作業ディレクトリを簡単に作れるようになる。
```shell
$ sh ./make_working_dir.sh
```
```shell
$ tree .
.
├── alice
│   ├── Dockerfile
│   └── mnt
│       └── entrypoint.sh
├── bob
│   ├── Dockerfile
│   └── mnt
│       └── entrypoint.sh
├── docker-compose.yml
└── router
    ├── Dockerfile
    ├── mnt
    │   ├── entrypoint.sh
    │   └── router-rs
    │       ├── Cargo.toml
    │       └── src
    │           └── main.rs
    └── router.env
```