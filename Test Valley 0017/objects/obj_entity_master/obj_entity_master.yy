{
  "$GMObject":"",
  "%Name":"obj_entity_master",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_entity_master",
  "overriddenProperties":[],
  "parent":{
    "name":"Entitys",
    "path":"folders/Objects/Entitys.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"iv_creature_type","filters":[],"listItems":[],"multiselect":false,"name":"iv_creature_type","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spirit","varType":2,},
    {"$GMObjectProperty":"v1","%Name":"iv_state","filters":[],"listItems":[],"multiselect":false,"name":"iv_state","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"sp_wander","varType":2,},
    {"$GMObjectProperty":"v1","%Name":"iv_cur_look","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"iv_cur_look","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_spirit","path":"sprites/spr_spirit/spr_spirit.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_spirit","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"iv_scalex","filters":[],"listItems":[],"multiselect":false,"name":"iv_scalex","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"iv_scaley","filters":[],"listItems":[],"multiselect":false,"name":"iv_scaley","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"iv_controlling_player","filters":[],"listItems":[],"multiselect":false,"name":"iv_controlling_player","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_spirit",
    "path":"sprites/spr_spirit/spr_spirit.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}