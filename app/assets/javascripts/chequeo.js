function toggleDone() {
  var id = this.id;
  var row = $(this).parent().parent();

  $.ajax({
    type: "DELETE",
    url: "/chequeos/" + id + ".json",
    beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
    data: JSON.stringify({ "id":id }),
    contentType: "application/json",
    dataType: "json"})

    .fail(function(error) {
      console.log(error);
      alert("Error");
    })

    .done(function(data) {
      console.log(data);
      row.remove();
    });
}

$(document).ready(function() {
  $("input[type=button]").bind('click', toggleDone);
});
