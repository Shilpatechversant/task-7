<html>
    <head>
    <link rel="stylesheet" href="css/style.css">
    <title>Task 7</title>
    </head>
    <body>
    <section>         
        <div class="main_container">
            <div class="forms card">
                <h3>Task 7 - ColdFusion Structure</h3>
                <hr>
                <form name="cftask_7" action="" method ="post">
                    <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="first_name" required  autocomplete="off">
                    </div>
                    <div class="form-group">
                    <label>Value</label>
                    <input type="text" name="depart" required  autocomplete="off">
                    </div>
                    <div class="form-btn-control">
                    <input type="submit" class="common-btn" name="submit" value="Submit" />
                    </div>
                </form> 
                <cfif structKeyExists(form,'Submit')>
                    <cfset key=form.first_name>
                    <cfset value=form.depart>            
                    <cfset data=createObject("component","components.task7")>
                    <cfset struct_data=data.displayFunc(key,value)>
                    <cfdump var="#struct_data#">
                </cfif>       
            </div>
        </div>
</section>
</body>
</html>