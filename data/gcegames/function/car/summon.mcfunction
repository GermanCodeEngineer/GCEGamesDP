summon horse ~ ~ ~ {\
    Tags: ["gcegames.entity", "gcegames.car", "gcegames.car_horse"],\
    NoAI:1b,Invulnerable:1b,\
    Tame:1b,Silent:1b,PersistenceRequired:1b,\
    attributes:[\
        {id:"minecraft:scale",base:0.35},\
        {id:"minecraft:movement_speed",base:0.3d},\
    ],\
    DeathLootTable:"minecraft:empty",\
    SaddleItem:{id:"minecraft:saddle",count:1},\
    active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],\
    Passengers:[{\
        id:"minecraft:item_display",\
        Tags: ["gcegames.entity", "gcegames.car", "gcegames.car_model"],\
        item: {id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"gcegames:car"}},\
        billboard: "fixed",\
        transformation:{\
            left_rotation:[0f,1f,0f,1f],right_rotation:[0f,0f,0f,1f],\
            translation:[0f,0f,0f],scale:[1f,1f,1f],\
        },\
    }],\
}