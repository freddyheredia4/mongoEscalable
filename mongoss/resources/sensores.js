use sensores
db.createCollection('mediciones')
db.mediciones.ensureIndex({"codigoSensor":1,"fechaHora":1,"ubicacion":1})
db.mediciones.ensureIndex({"codigoSensor":1,"fechaHora":1})
