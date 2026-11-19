#> libs:api/player_motion
#
# プレイヤーを向いている方向に吹っ飛ばす
#
# @input
#   int power

# サドルスロットに設定
    $item replace entity @s saddle with stone_button[enchantments={"libs:player_motion":$(power),vanishing_curse:1},equippable={slot:"saddle",equip_sound:"intentionally_empty"},custom_name=["",{text:"PlayerMotion用のアイテム"}]]