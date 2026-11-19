# Datapack_Template
『GoldFlash』用データパックテンプレート(いろんなライブラリ付き)

## 1, 使用可能バージョン
* `26.3`

## 2, ライブラリの使用方法
### 2.1, 距離計測ライブラリ
* 1.まず、自分との距離を測りたいエンティティ一体に対し『libs.get_range』タグを付与する
* 2.次にfunction libs:api/get_rangeを実行する
* 3.storage libs:calc Result.rangeに距離が入っているためチャット欄などにさせたい場合 **tellraw @s {storage:"libs:calc",nbt:Result.range,interpret:1b}** と入力することで表示できる

### 2.2, プレイヤーモーションライブラリ
* 1.**function libs:api/player_motion {power:(1~255までの好きな値)}** を実行することでプレイヤーが向いている方向に吹っ飛ばす

## 3, イベントハンドラー
イベントハンドラーとはプレイヤーが特定の動作を行なった時実行されるfunctionのことである

### 3.1, 左クリック
* 1.コンポーネントpiercing_weaponが付与されているかつカスタムエンチャント「libs:left_click」が付与されているアイテムを用意する
* 2.そのアイテムを持った状態で左クリックすることでplayer:handler/left_clickが発火される(つまり、player:handler/left_click内に処理を書けばよい)

## 3, その他
### 3.1, ゲームの進行について
* ゲームの処理tickはgame_core:ストレージのstateを変更することで切り替えられる
    * **state:staying** 待機中時のtick処理
    * **state:playing** ゲーム中のtick処理