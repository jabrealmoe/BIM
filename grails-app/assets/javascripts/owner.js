/**
 * Created by jj on 6/14/15.
 */
$( function () {
    $( '.amtcsDatePicker' ).datepicker( {
        startDate: '-100y',
        endDate: '-18y'
    } ).on('changeDate', function(e){
        var someVal = $('#dobPicker1' ).val();
        console.log(someVal) ;
        $('#dobPicker1' ).bootstrapValidator('revalidateField','dob');
    });

    $('#dobPicker1' ).bootstrapValidator({
        fields: {
            dob:{
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Your first name is required'
                    }
                }
            }
        }
    })
} )

$( function () {
    $( 'a[href$=".pdf"]' ).prop( 'target', '_blank' );
} );

$( ".removeNumbers" ).on( 'keyup', function ( e ) {
    var val = $( this ).val();
    if ( val.match( /[^\sa-zA-Z'-]/ ) ) {
        $( this ).val( val.replace( /[^\sa-zA-Z'-]/, '' ) );
    }
} );

$( ".removeLetters" ).on( 'keyup', function ( e ) {
    var val = $( this ).val();
    if ( val.match( /[^0-9]/g ) ) {
        $( this ).val( val.replace( /[^0-9]/g, '' ) );
    }
} );


$( ".section1ofSSN" ).on( 'focusout', function ( e ) {
    var val = $( this ).val();
    if ( val.match( /^000/ ) ) {
        $( this ).val( val.replace( /^000/g, '' ) );
    }
    if ( val.match( /^666/ ) ) {
        $( this ).val( val.replace( /^666/g, '' ) );
    }
    if ( val.match( /^9[0-9][0-9]/ ) ) {
        $( this ).val( val.replace( /^9[0-9][0-9]/g, '' ) );
    }
} );
$( ".section2ofSSN" ).on( 'focusout', function ( e ) {
    var val = $( this ).val();
    if ( val.match( /^00/ ) ) {
        $( this ).val( val.replace( /^00/g, '' ) );
    }
} );
$( ".lastFourSSN" ).on( 'focusout', function ( e ) {
    var val = $( this ).val();
    if ( val.match( /^0000/ ) ) {
        $( this ).val( val.replace( /^0000/g, '' ) );
    }
} );



function is_int( value ) {
    if ( (parseFloat( value ) == parseInt( value )) && !isNaN( value ) ) {
        return true;
    }
    else {
        return false;
    }
}
$( ".zip" ).on( 'keyup', function ( e ) {
    var input = $( this );
    if ( input.val().length > 5 ) {
        var string = $( this ).val();
        console.log( "String value is " + string )
        $( this ).val( string.substring( 0, 5 ) + '-' + string.substring( 5, 9 ) );
    }
} );

$( "#phoneNo" ).keyup( function ( e ) {
    if ( (e.keyCode > 47 && e.keyCode < 58) || (e.keyCode < 106 && e.keyCode > 95) ) {
        this.value = this.value.replace( /(\d{3})(\d{3})(\d{4})/, '($1) $2-$3' );
    }
} )

$( "#dobPicker1" ).keyup( function ( e ) {
    if ( (e.keyCode > 47 && e.keyCode < 58) || (e.keyCode < 106 && e.keyCode > 95) ) {
        this.value = this.value.replace( /(\d{2})(\d{2})(\d{4})/, '$1/$2/$3' );
    }
} )
function autoFormAdvance(afterNumChars,currentFormId,nextFormId) {
    if(document.getElementById(currentFormId).value.length==afterNumChars) {
        document.getElementById(nextFormId).focus();
    }
}

//Style the Notification icon
$(".notificationGlyphicon" ).css("text-align", "center");