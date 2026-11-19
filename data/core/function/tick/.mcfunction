#> core:tick/
#
# ワールド全体のtick処理
#
# @within tags/function minecraft:tick

# ライブラリのtick処理
    function libs:tick/

# ゲーム中のtick処理
    execute if data storage game_core: {state:playing} run function game_core:playing/

# 待機中のtick処理
    execute if data storage game_core: {state:staying} run function game_core:staying/