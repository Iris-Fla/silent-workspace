# Node.jsの公式イメージを使う
FROM node:22

# 作業ディレクトリを設定
WORKDIR /app

# パッケージをインストールする前にpackage.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 必要なパッケージをインストール
RUN npm install

# プロジェクトの残りのファイルをコピー
COPY . .

# Next.jsのプロジェクトをビルド
RUN npm run build

# Next.jsのデフォルトのポートを開放
EXPOSE 3000

# Next.jsのアプリを実行
CMD ["npm","run","start"]
