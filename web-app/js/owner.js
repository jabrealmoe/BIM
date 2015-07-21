/**
 * Created by jj on 6/14/15.
 */
$( function () {
  $( '.amtcsDatePicker' ).datepicker( {
    startDate: '-100y',
    endDate: '-18y'
  } );
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
$( ".section3ofSSN" ).on( 'focusout', function ( e ) {
  var val = $( this ).val();
  if ( val.match( /^0000/ ) ) {
    $( this ).val( val.replace( /^0000/g, '' ) );
  }
} );


$( ".restrictMemberId" ).on( 'keypress', function ( e ) {
  var regex = new RegExp( "^[a-zA-Z0-9]+$" );
  var str = String.fromCharCode( !e.charCode ? e.which : e.charCode );
  if ( regex.test( str ) ) {
    return true;
  }

  e.preventDefault();
  return false;
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
    this.value = this.value.replace( /(\d{3})(\d{3})(\d{4})/, '($1)-$2-$3' );
  }
} )
