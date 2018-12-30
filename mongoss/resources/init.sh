#!/usr/bin/env bash
mongo --eval "sh.addShard('shard1/mongo1:27017')"
mongo --eval "sh.addShard('shard2/mongo4:27017')"
mongo --eval "sh.enableSharding('sensores')"
mongo < sensores.js #Creo la DB, coleccion e indice en el shard1
mongo --eval "sh.shardCollection('sensores.mediciones',{'codigoSensor':1,'fechaHora':1})"
mongo --eval "db.mediciones.insert({codigoSensor:1,fechaHora:ISODate('2014-10-19T16:36:14.197Z'),ubicacion:['-1.242807', '-78.637397'],temperaturaAmbiental:35.0,porcentajeHumedad:58,nivelDesibeli:140,intensidadLuminosa:10000})"
mongo --eval "db.mediciones.insert({codigoSensor:2,fechaHora:ISODate('2014-10-20T16:36:14.197Z'),ubicacion:['-1.242806', '-78.637397'],temperaturaAmbiental:40.0,porcentajeHumedad:76,nivelDesibeli:300,intensidadLuminosa:10000})"