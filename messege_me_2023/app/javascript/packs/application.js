import chatRoomChannel from "../channels/chat_room_channel";

$(document).on('turbolinks:load', function () {
  $("form").on('submit', function(e){
    e.preventDefault();
    let message = $('#message').val();
    if (message.length > 0) {
      chatRoomChannel.speak(message);
      $('#message').val('')
    }
  });
})