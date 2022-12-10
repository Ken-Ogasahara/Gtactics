# Gtactics

### サイトテーマ
　オンラインゲームでメンバーと作戦を共有する戦術ボードサイト

### テーマを選んだ理由
- オンラインRPGをプレイしている際に、他のメンバーに情報を共有するサイトがあると便利だと感じました。オンラインRPGではテキストベースでのコミュニケーションが主流です。しかし、バトルコンテンツなどチームメンバーで戦術を共有する際は、文章のみでの説明は難しく、イメージ図を用いた方が理解がしやすい場面が多々あります。そのため、フィールドやフィールド内の要素（自チームや敵チーム）を俯瞰で確認し、イメージを画面上で共有できる戦術ボードを作成しようと考えました。

### ターゲットユーザ
- 一般的なゲームプレイヤー
- ゲーム動画投稿者・配信者（解説動画を作成する際など）

### 主な利用シーン
- ゲームで新しい戦術を考えるとき
- ゲーム初心者に基本的な戦術をレクチャーするとき

## 設計書
- 実装機能リスト https://docs.google.com/spreadsheets/d/1vuZLo808-rUYRPJtP9WxjT-iLdaXGepirFTam7eOl6o/edit?usp=sharing

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- フィールド：今回対応するフィールドは円形のため、円の画像を使用(画像投稿において、著作権保護のため、実際のゲーム画像を投稿することは禁止とします)
- フィールド内要素：特定のキャラクターの画像などは使用せず、円状の要素をフィールド内に追加
- ロゴや画像の使用：不使用（アップデートの方向性としては、フィールドの図形パターン追加、あるいはスポーツのフィールドを追加し、より汎用的な戦術ボードとします）