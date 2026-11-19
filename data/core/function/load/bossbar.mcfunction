#> core:load/bossbar
#
# ボスバーの読み込み
#
# @within function core:load/once

# ボスバーの作成


# ボスバーの読み込み完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"ボスバーの読み込み完了"}]