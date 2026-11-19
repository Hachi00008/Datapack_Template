#> core:load/storage
#
# ストレージの読み込み
#
# @within function core:load/once

# ゲーム状態管理
    data modify storage game_core: state set value staying

# 読み込み完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"ストレージの読み込み完了"}]