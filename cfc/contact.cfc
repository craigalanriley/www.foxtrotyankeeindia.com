
<cfcomponent output="true">

	<cffunction name="processData" access="remote" output="true" returnType="any" returnFormat="json" >
		<cfargument name="name"		type="string" 	required="true" />
		<cfargument name="email"	type="string" 	required="true" />

		<cftry>
		
			<cfscript>
				
				var result 	= "#SerializeJSON(arguments)#";

				result = sendMessage(
									name=arguments.name, 
									email=arguments.email, 
									msg=arguments.msg
								    );

			</cfscript>
			
			
			<!--- <cfset sleep(500)> --->

			<cfcatch type="any">
				<cfset result = SerializeJSON(cfcatch)>
			</cfcatch>
			
		</cftry>
			
		<cfreturn result />
	</cffunction>


	<cffunction name="sendMessage" access="remote" output="true" returnType="any" returnFormat="json" >
		<cfargument name="name"		type="string" 	required="true" />
		<cfargument name="email"	type="string" 	required="true" />
		<cfargument name="msg"		type="string" 	required="true" />

		<cftry>

			<cfscript>
				
				var result 	= true;
				var first_name = listFirst(arguments.name, " ");
				var last_name = listRest(arguments.name, " ");

			</cfscript>
			
			<cfmail to="info@foxtrotyankeeindia.com" from="#arguments.email#" subject="FYI Web Enquiry" type="html">
			  
			  	<p>The following enquiry has just been sent from FYI:</p>
			  	<br />
			  	<p>
			  	<strong>First Name:</strong> #first_name#<br/>
			  	<strong>Last Name:</strong> #last_name#<br/>
			  	<strong>Email:</strong> #arguments.email#<br/>
			  	<strong>msg:</strong> #arguments.msg#<br/>
			  	</p>

			</cfmail>


			<cfcatch type="any">
				<cfset result = SerializeJSON(cfcatch)>
			</cfcatch>
			
		</cftry>
			
		<cfreturn result />
	</cffunction>

	
</cfcomponent>