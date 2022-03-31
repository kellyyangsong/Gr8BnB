<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Gr8BnB</title>
<style>
	body {
		background-color: #30475E;
	  	background-size: contain;
	  	height: 90vh;
	  	color: #F5F5F5;
	}
	
	.table-style {
		background-color: #F5F5F5;
		padding: 1em;
		border-color: #e43f5a;
	}
	
	
	.table-style th{
		padding: 1em;
	}
	
	.table-style td {
		padding: 1em;
	}
	
	input::placeholder { 
 	 	color: grey;
  		opacity: 1; 
	}
	
	nav {
		background-color: #e43f5a;
		margin-bottom: 3em;
	}
	
	.logo {
		margin: 0;
	}
	
	.btn-main {
	  border: none;
	  border-radius: 8px;
	  padding: 12px;
	  background: #e43f5a;
	  font-size: 16px;
	  line-height: normal;
	  color: white;
	  cursor: pointer;
	  margin: 0;
	}
	
	.header {
		margin-bottom: 1em;
	}
	
	.search-box {
		border: 1px solid #121212;
		border-radius: 3px;
	}
	
	a {
		text-decoration: none;
	}
	
	#contact h2 {
	  font-weight: normal;
	  font-size: 24px;
	  line-height: 54px;
	  padding-top: 48px;
	  padding-bottom: 16px;
	  color: white;
	}

	.contact-form {

	  font-size: 24px;
	  line-height: 56px;
	  background-color: white;
	  border: 1px solid #e43f5a;
	  border-radius: 8px;
	  box-shadow: 2px 2px 8px rgba(0,0,0,0.2);
	  padding: 64px;
	  margin: 40px 0;
	}

	.contact-form .form-control{
	    border-radius:0.6rem;
	}

	.form-control:focus {
	  border-color: #e43f5a;
	  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(228,64,89, 0.4);
	}
	
	.form-group {
		margin-bottom: 16px;
	}


</style>
</head>
<body>
      <jsp:include page="NavBar.jsp"></jsp:include>
      
      
      
     <div class="container">
        <div class="row">
          <div class="col-12">
            <h2 class="d-flex justify-content-center">Create Calendar for Listing</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <div class="contact-form">
              <form action="calendarcreate" method="post">
                <div class="row">
                  <div class="col-12 col-md-12">
                    <div class="form-group">
                      <input
                        id="listingid"
                        type="text"
                        name="listingid"
                        class="form-control"
                        placeholder="Listing ID"
                        value=""
                      />
                    </div>
                    <div class="form-group">
                      <input
                        id="date"
                        type="text"
                        name="date"
                        class="form-control"
                        placeholder="Date(yyyy-mm-dd)"
                        value=""
                      />
                    </div>
                    <div class="form-group">
                      <input
                        id="available"
                        type="text"
                        name="available"
                        class="form-control"
                        placeholder="Available or not"
                        value=""
                      />
                    </div>
                    <div class="form-group">
                      <input
                        id="price"
                        type="text"
                        name="price"
                        class="form-control"
                        placeholder="Price"
                        value=""
                      />
                    </div>
                    <div class="form-group">
                      <input
                        id="adjustedprice"
                        type="text"
                        name="adjustedprice"
                        class="form-control"
                        placeholder="Adjusted Price"
                        value=""
                      />
                    </div>
                   <div class="form-group">
                      <input
                        id="minimumnights"
                        type="text"
                        name="minimumnights"
                        class="form-control"
                        placeholder="Minimum Nights"
                        value=""
                      />
                    </div>
                    <div class="form-group">
                      <input
                        id="maximumnights"
                        type="text"
                        name="maximumnights"
                        class="form-control"
                        placeholder="Maximum Nights"
                        value=""
                      />
                    </div>
                    <div class="form-group">
	                      <div class="d-flex justify-content-start align-items-start"  >
	                        <input
	                          type="submit"
	                          name="btnSubmit"
	                          class="btn-main"
	                          value="Create Calendar"
	                        />
	                </div>
                   			<p id="status" class="d-flex justify-content-center"></p>
                    </div>
                  </div>
                </div>
              </form>
            </div>
            <span id="successMessage" class="d-flex justify-content-center"><b>${messages.success}</b></span>
          </div>
        </div>
      </div>
      
      
     

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>