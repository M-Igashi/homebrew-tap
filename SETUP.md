# Homebrew セットアップガイド

このガイドでは、`region-proxy` の Homebrew インストールを有効にするための手順を説明します。

## 前提条件

- GitHub アカウント
- リポジトリへの管理者アクセス

## セットアップ手順

### 1. homebrew-tap リポジトリの作成

1. GitHub で新しいリポジトリを作成します
   - リポジトリ名: `homebrew-tap`
   - 公開（Public）に設定
   - README は追加しない

2. `homebrew/` ディレクトリの内容をプッシュ:

```bash
cd /path/to/region-proxy/homebrew
git init
git remote add origin https://github.com/M-Igashi/homebrew-tap.git
git add .
git commit -m "Initial commit: Add region-proxy formula"
git branch -M main
git push -u origin main
```

### 2. Personal Access Token (PAT) の作成

1. GitHub Settings → Developer settings → Personal access tokens → Fine-grained tokens
2. "Generate new token" をクリック
3. 以下の設定:
   - Token name: `homebrew-tap-update`
   - Expiration: 適切な期間（例: 1年）
   - Repository access: "Only select repositories" → `M-Igashi/homebrew-tap` を選択
   - Permissions:
     - Contents: Read and write
     - Metadata: Read-only

4. トークンを生成してコピー

### 3. Secret の設定

1. `region-proxy` リポジトリの Settings → Secrets and variables → Actions
2. "New repository secret" をクリック
3. 以下の設定:
   - Name: `HOMEBREW_TAP_TOKEN`
   - Value: 先ほど作成した PAT

### 4. 初回リリースの作成

```bash
cd /path/to/region-proxy

# バージョンタグを作成
git tag v0.1.0
git push origin v0.1.0
```

これにより、GitHub Actions が自動的に:
1. macOS 用のユニバーサルバイナリをビルド
2. tarball を作成してリリースに添付
3. SHA256 を計算
4. homebrew-tap の Formula を更新

### 5. インストールのテスト

```bash
# Tap を追加
brew tap M-Igashi/tap

# インストール
brew install region-proxy

# 動作確認
region-proxy --help
```

## 新しいバージョンのリリース

```bash
# Cargo.toml のバージョンを更新
# バージョンタグを作成
git tag v0.2.0
git push origin v0.2.0
```

GitHub Actions が自動的に Formula を更新します。

## トラブルシューティング

### Formula の更新が失敗する場合

1. `HOMEBREW_TAP_TOKEN` が正しく設定されているか確認
2. PAT に必要な権限があるか確認
3. GitHub Actions のログを確認

### ビルドが失敗する場合

1. ローカルで `cargo build --release` が成功するか確認
2. 依存関係に問題がないか確認

### SHA256 が一致しない場合

```bash
# 手動で SHA256 を計算
shasum -a 256 region-proxy-v*.tar.gz
```

計算された SHA256 を Formula に手動で設定します。
