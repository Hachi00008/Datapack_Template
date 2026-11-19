#> core:load/scoreboard
#
# スコアボードの読み込み
#
# @within function core:load/once

# スコアボードの作成
    # ハンドラー
        # 初回参加処理
        scoreboard objectives add First_Login custom:play_time

        # 2回目以降の参加処理
        scoreboard objectives add ReLogin custom:leave_game

    # プレイヤー関連
        # 個別スコア
        scoreboard objectives add Player_ID dummy

    # その他
        # グローバルスコア
        scoreboard objectives add Global dummy

        # 計算用スコア
        scoreboard objectives add Constant dummy

        # 一時スコア
        scoreboard objectives add Temporary dummy

# スコアの設定
    # 計算用スコア


# 読み込み完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"スコアボードの読み込み完了"}]