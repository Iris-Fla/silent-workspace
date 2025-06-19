| モード | コマンド | 特徴 |
|--------|----------|------|
| 開発   | `docker-compose up` | ホットリロードあり。ローカルファイルがリアルタイムで反映される。`docker-compose.override.yml` が適用される。 |
| 本番   | `docker-compose -f docker-compose.yml up --build` | 本番用設定で起動。ソースコードをマウントせず、ビルド成果物を使用。`override.yml` は無視される。 |
