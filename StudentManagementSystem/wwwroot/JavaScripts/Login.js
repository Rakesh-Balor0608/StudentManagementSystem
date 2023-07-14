

$(document).ready(function () {
    $("#student").click(function () {
        debugger
        $("#Type").val("Student")
        $("#StudentTile").show();
        $("#TeacherTile").hide();

    })
    $("#teacher").click(function () {
        debugger
        $("#Type").val("Teacher")
        $("#TeacherTile").show();
        $("#StudentTile").hide();
    })
    $("#studentLogin").click(function () {
        debugger
        var password = $("#Password").val();
        $('#LoginPage').submit();
    })
    $("#teacherLogin").click(function () {
        debugger
        var id = $("#LoginId").val();
        var password = $("#Password").val();
        alert(id, password)
        $('#LoginPage').submit();
    })
})