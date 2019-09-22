exports.hander = (event, context, callback) =>{
  const response = {
    statusCode: 200,
    body: JSON.stringify('Hello Lambda')
  };
  callback(null, response)
}