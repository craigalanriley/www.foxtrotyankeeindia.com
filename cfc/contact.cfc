<cfcomponent output="true">

	<cffunction name="sendContactMessage" access="remote" output="true" returnType="any" returnFormat="json" >
		<cfargument name="name"		type="string" 	required="true" />
		<cfargument name="email"	type="string" 	required="true" />
		<cfargument name="message"	type="string" 	required="true" />

		<cftry>
		
			<cfscript>
				
				var result 	= "{}";
				
			</cfscript>

			<script type="text/javascript">

				console.log("CFC!!!");

			</script>
			
			<!--- <cfset sleep(500)> --->
			
		</cftry>
			
		<cfreturn result />
	</cffunction>

</cfcomponent>