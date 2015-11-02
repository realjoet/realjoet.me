var mongoose = require('mongoose'),
  Schema = mongoose.Schema;

// Model properties _______________________
// ________________________________________
var WorkSchema = new Schema({
  title: String,
  role: String,
  url: String,
  live: Boolean,
  description: String,
  details: String,
});

WorkSchema.virtual('date')
  .get(function(){
    return this._id.getTimestamp();
  });

mongoose.model('Work', WorkSchema);

