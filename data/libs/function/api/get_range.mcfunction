#> libs:api/get_range
#
# 実行者と対象の距離を取得
#
# as @s
#.   @e[tag=libs.get_range]

# 自分のPosを取得
    data modify storage libs:calc Pos.self set from entity @s Pos

# 対象のPosを取得
    data modify storage libs:calc Pos.target set from entity @n[tag=libs.get_range] Pos

# 計算した結果をストレージに代入
    data modify storage libs:calc Result.range set compute default float libs:api/player_range
    data modify storage libs:calc Result.range set string storage libs:calc Result.range 0 -1

# リセット
    data remove storage libs:calc Pos
    tag @n[tag=libs.get_range] remove libs.get_range