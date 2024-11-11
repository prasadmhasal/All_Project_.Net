

$(document).ready(function () {

})

function Submit() {
    var data = $('#myform').serialize();
    alert(data);// Correctly invoke serialize()

    $.ajax({
        url: 'Student/AddStudent',
        dataType: 'json',  // Use lowercase 'json'
        contentType: 'application/x-www-form-urlencoded',  // Correct content type
        type: 'POST',  // Typically POST for form submission
        data: data,
        success: function (response) {
            alert('Data added successfully');
        },
        error: function (xhr, status, error) {
            alert('An error occurred: ' + error);  // You can provide error details
        }
    });
}


