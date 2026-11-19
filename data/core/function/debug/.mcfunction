#> core:debug/
#
# デバッグ用のfunction(基本何も書かない)

    function libs:api/get_range
    
    tellraw @a ["",{text:"距離："},{storage:"libs:calc",nbt:Result.range,color:"white",interpret:1b},{text:"m"}]