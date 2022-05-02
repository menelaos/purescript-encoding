export function encodeImpl (utfLabel, str) {
  const encoder = new TextEncoder(utfLabel);

  return encoder.encode(str);
};
