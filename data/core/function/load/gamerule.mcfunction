#> core:load/gamerule
#
# ゲームルールのロード
#
# @within function core:load/once

# コマンド関連
    gamerule command_block_output false
    gamerule send_command_feedback false

# 実行完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"ゲームルールの読み込み完了"}]