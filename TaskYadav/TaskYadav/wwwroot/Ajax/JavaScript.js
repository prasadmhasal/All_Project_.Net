$(document).ready(function () {
    $('#myTable').DataTable();
});
function submit() {


    var data = $('#myform').serialize();
    alert(data);
    $.ajax({

        url: 'Emp/AddEmp',
        type: 'POST',
        dataType: 'json',
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        data: data,
        success: function () {
            alert('addedd')
        },
        error: function () {
            alert('error')
        }


    })
}