# foo-tec/homebrew-tap

foo-tec のアプリを Homebrew で入れるための tap。

```sh
brew tap foo-tec/tap
brew install --cask foo-tec/tap/retain-process
```

| Cask | 内容 |
|---|---|
| `retain-process` | RetainProcess — 開発用のプロセスをメニューバーから起動・停止し、CPU・メモリとログを見るユーティリティ（macOS 13 以降） |

配布物（公証済みの DMG）はこのリポジトリの Releases に置く。タグは `<cask 名>-v<version>`（例: `retain-process-v0.1.0`）。

## 更新の手順

1. 新しい DMG を Releases に上げる（`gh release create <cask 名>-v<version> <dmg>`）
2. `Casks/<cask 名>.rb` の `version` と `sha256`（`shasum -a 256 <dmg>`）を書き換えてコミット
3. `brew audit --cask --online foo-tec/tap/<cask 名>` で確認
