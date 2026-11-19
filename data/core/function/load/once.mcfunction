#> core:load/once
#
# 一度のみ読み込む処理
#
# @within function core:load/

# バージョン
    data modify storage global: Version set value "1.0.0"

# Prefix
    data modify storage global: Prefix.info set value "§a[Datapack_Template] >>> §r"
    data modify storage global: Prefix.error set value "§c[Datapack_Template] >>> §r"
    data modify storage global: Prefix.debug set value "§7[Datapack_Template] >>> §r"

# それぞれのロード
    function core:load/scoreboard
    function core:load/bossbar
    function core:load/team
    function core:load/gamerule
    function core:load/storage