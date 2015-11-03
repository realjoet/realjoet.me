var mongoose = require('mongoose'),
  Schema = mongoose.Schema;

// Model properties _______________________
// ________________________________________
var WorkSchema = new Schema({
  title: String,
  role: String,
  description: String,
  type: String, // Build, Write or Play
  live: Boolean, // Is there a live site they can visit??
  url: String
});

WorkSchema.virtual('date')
  .get(function(){
    return this._id.getTimestamp();
  });

mongoose.model('Work', WorkSchema);

