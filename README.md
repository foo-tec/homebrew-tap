# foo-tec/homebrew-tap

foo-tec のアプリを Homebrew で入れるための tap。

```sh
brew tap foo-tec/tap
brew trust --cask foo-tec/tap/retain-process
brew install --cask foo-tec/tap/retain-process
```

Homebrew 7 以降は、公式以外の tap の Cask を信頼すると明示するまで読み込まない（`Error: Refusing to load cask … from untrusted tap foo-tec/tap.`）。`brew trust` は Cask ごと（上）か、tap 全体（`brew trust foo-tec/tap`）で行う。一度信頼すれば、以後の `brew upgrade` では不要。

RetainProcess を入れると、CLI の `retain-process` も PATH に入る（`retain-process help`）。

| Cask | 内容 |
|---|---|
| `retain-process` | RetainProcess — 開発用のプロセスをメニューバーから起動・停止し、CPU・メモリとログを見るユーティリティ（macOS 13 以降） |

配布物（公証済みの DMG）はこのリポジトリの Releases に置く。タグは `<cask 名>-v<version>`（例: `retain-process-v1.0.1`）。

## 更新の手順

1. 新しい DMG を Releases に上げる（`gh release create <cask 名>-v<version> <dmg>`）
2. `Casks/<cask 名>.rb` の `version` と `sha256`（`shasum -a 256 <dmg>`）を書き換えてコミット
3. `brew audit --cask --online foo-tec/tap/<cask 名>` で確認
