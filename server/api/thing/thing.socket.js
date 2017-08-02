/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var thing = require('./thing.model');

exports.register = function(socket) {
  thing.schema.post('save', function (doc) {
    onSave(socket, doc);
  });  
}

function onSave(socket, doc, cb) {
  socket.emit('thing:save', doc);
}

