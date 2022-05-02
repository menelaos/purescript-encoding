export function decodeImpl (Left, Right, utfLabel, buffer) {
  let result;
  const decoder = new TextDecoder(utfLabel);

  try {
    result = Right(decoder.decode(buffer));
  }
  catch (error) {
    result = Left(error);
  }

  return result;
};
