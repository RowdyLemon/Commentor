$(document).ready(function() {
    $('input').addClass('empty');

    var lengthValidation = function()
    {
        if($(this).val() === "")
        {
            $(this).removeClass().addClass('empty');
        }
        else if($(this).val().length >= 3)
        {
            $(this).removeClass().addClass('valid_input');
        }
        else
        {
            $(this).removeClass().addClass('invalid_input');
        }
    }

    $('#input_username').keyup(lengthValidation);

    $('#input_password').keyup(lengthValidation);
});