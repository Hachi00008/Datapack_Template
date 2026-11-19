#> core:load/
#
# データパックの読み込み処理
#
# @within tags/function minecraft:load

# データパックの状態
    data modify storage global: isCompleated set value false

# データパックが完成している時、一度のみ実行
    execute if data storage global: {isCompleated:true} unless data storage global: Version run function core:load/once
    execute unless data storage global: {isCompleated:true} run function core:load/once
    execute unless data storage global: {isCompleated:true} run gamerule send_command_feedback true

# 読み込み完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"データパックの読み込み完了"}]