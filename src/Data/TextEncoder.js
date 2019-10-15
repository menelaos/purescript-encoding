"use strict";

exports._encode = function (utfLabel, str) {
  var encoder = new TextEncoder(utfLabel);

  return encoder.encode(str);
};
