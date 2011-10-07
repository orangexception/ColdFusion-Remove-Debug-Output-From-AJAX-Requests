<html>
	<head>
		<title>AJAX-debug-output</title>
		
		<script src= "http://code.jquery.com/jquery-1.6.2.min.js"></script>
		<script>
			$( function() {
				console.log( 'Setting Up Initial Handler' );
				$( "#json-page-link" ).click( JSONPageHandler );
                $( "#json-cfc-link" ).click( JSONCFCHandler );
				
			} );
			
			function JSONPageHandler() {
				var stRequestData= {
					"a": 4 ,
					"b": 2
			
				};
			
				var sURL= "json-page.cfm";
				var stAJAXSettings= {
					"url": sURL , "type": "GET" ,
					"crossDomain": false ,
					"data": stRequestData , "dataType": "json" ,
			
					"success": function( stResponseData , sStatus , jQueryXHR ) {
						JSONPageSuccessHandler( stResponseData , stRequestData );
			
					} ,
			
					"error": function( stResponseData , sStatus , jQueryXHR ) {
						JSONPageErrorHandler( stResponseData , stRequestData );
			
					}
			
				};
				
				$.ajax( stAJAXSettings );
				
			}
			
			function JSONPageSuccessHandler( stResponseData , stRequestData ) {
				console.log( 'JSONPageSuccessHandler( stResponseData , stRequestData )' );
				console.log( stRequestData );
				console.log( stResponseData );
				
			}
			
			function JSONPageErrorHandler( stResponseData , stRequestData ) {
				console.log( 'JSONPageErrorHandler( stResponseData , stRequestData )' );
				console.log( stRequestData );
				console.log( stResponseData );
				
			}
    		
			function JSONCFCHandler() {
				var stRequestData= {
					"a": 4 ,
					"b": 2
			
				};
			
				var sURL= "AComponent.cfc?method=anAnswer";
				var stAJAXSettings= {
					"url": sURL , "type": "GET" ,
					"crossDomain": false ,
					"data": stRequestData , "dataType": "json" ,
			
					"success": function( stResponseData , sStatus , jQueryXHR ) {
						JSONCFCSuccessHandler( stResponseData , stRequestData );
			
					} ,
			
					"error": function( stResponseData , sStatus , jQueryXHR ) {
						JSONCFCErrorHandler( stResponseData , stRequestData );
			
					}
			
				};
				
				$.ajax( stAJAXSettings );
				
			}
			
			function JSONCFCSuccessHandler( stResponseData , stRequestData ) {
				console.log( 'JSONCFCSuccessHandler( stResponseData , stRequestData )' );
				console.log( stRequestData );
				console.log( stResponseData );
				
			}
			
			function JSONCFCErrorHandler( stResponseData , stRequestData ) {
				console.log( 'JSONCFCErrorHandler( stResponseData , stRequestData )' );
				console.log( stRequestData );
				console.log( stResponseData );
				
			}
			
		</script>
		
	</head>
	<body>
		<a href= "#" id= "json-page-link">json-page</a> |
    	<a href= "#" id= "json-cfc-link">json-cfc</a>
		
	</body>
	
</html>
