<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap 4 Accordion with Plus Minus Icons</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .bs-example{
        border: 1.5px solid #121111;
    width: 1000px;
    margin: 19px 0px 0px 86px;
    padding: 28px 27px 45px 33px;
    }
    .accordion .fa{
        margin-right: 0.5rem;
    }
</style>
<script>
    $(document).ready(function(){
        // Add minus icon for collapse element which is open by default
        $(".collapse.show").each(function(){
        	$(this).prev(".card-header").find(".fa").addClass("fa-minus").removeClass("fa-plus");
        });
        
        // Toggle plus minus icon on show hide of collapse element
        $(".collapse").on('show.bs.collapse', function(){
        	$(this).prev(".card-header").find(".fa").removeClass("fa-plus").addClass("fa-minus");
        }).on('hide.bs.collapse', function(){
        	$(this).prev(".card-header").find(".fa").removeClass("fa-minus").addClass("fa-plus");
        });
    });
</script>
</head>
<body>

	<div class="bs-example">
   		 <div class="accordion" id="accordionExample">
       

			        <div class="card">
					            <div class="card-header" id="headingOne">
					                <h2 class="mb-0"> <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"><i class="fa fa-plus"></i> For B.Tech</button>									
					                </h2>
					            </div>
			            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
				                <div class="card-body">
				                     <p><h2>Admission Process of Madhav Institute of Technology and Science 2019</h2><p><strong>Online:-</strong></p><ul><li>Visit the official website of Madhav Institute of Technology &amp; Science.</li><li>Then go to the tab of admission and select the online application form option.</li><li>Fillup the application form with relevant information and required documents.</li><li>Documents needed at the time of application submission :​</li><li>Copy of 10th Mark Sheet.</li><li>Copy of 10+2 Mark Sheet.</li><li>Copy of Transfer Certificate.</li><li>Copy of Migration Certificate.</li><li>Valid proof of the permanent residence (Passport / Ration Card / Election ID Card, etc.)</li><li>Visa or Passport, for Foreign National Students</li><li>Migration Certificate</li><li>Submit the application form with the payable amount.</li><li>Fees can be submitted using the Debit / Credit card / Cash.</li></ul><p><strong>Offline:-</strong></p><ul><li>Visit Madhav Institute of Technology &amp; Science&#39;s official website</li><li>Download the form below.</li><li>Complete the application form with the required fields and the required documents.</li><li>Class X Certificate for Date of Birth.</li><li>Other certificates for academics or sports.</li><li>Mark Sheets of Class X, XII, Degree, Diploma (as may be applicable).</li><li>Domicile Certificate (if applicable).</li><li>After finally filling the application form, send it to the admission office of the Madhav Institute of Technology &amp; Science</li></ul><h2>Eligibility Criteria for B.E. at&nbsp;Madhav Institute of Technology and Science 2019</h2><p>The candidate should have passed pre-university examinations with minimum 45% marks with Physics, Chemistry, and Chemistry / Biology / Computer Science as an optional subject under the Karnataka State Pre-university Board or its equivalent.</p><p>Candidates seeking admission to the second year of the four-year B.E. degree must have completed the three-year Diploma course conducted by the Board of Technical Examination of the Karnataka Government in the respective branches/courses or any other examination recognized as equivalent by the Visvesvaraya Technological University.</p><h2>Selection Process of&nbsp;B.E. at&nbsp;Madhav Institute of Technology and Science 2019</h2><p><strong>STEP-1</strong></p><p>The Selection will be done on the basis of score obtained in JEE &amp; the academic performance of the applicants.</p><p><strong>STEP-2</strong></p><p>Shortlisted applicants will be called for Aptitude test &amp; Group Discussion (GD) where applicants will be assessed to his/her verbal, written and analytical skills.</p><p><strong>STEP-3</strong></p><p>After that, the selected applicants will be called for the Personal Interview (PI) to identify &amp; assess the interpersonal skills of the applicant.</p><p><strong>STEP-4</strong></p><p>The Final Selection will be done on the basis of the composite scores of Entrance exam &amp; PI round conducted by the institute.</p></div><div class="heading"  id="mtech" >For M.Tech</div><div class="box content"  style="display:none;"   ><h2>Eligibility Criteria for M.Tech at Madhav Institute of Technology and Science 2019</h2><p>Candidates should have passed B.E./ B.Tech. Examinations in the relevant fields with not less than 50 percent of the marks in their degree examinations. The course is open to candidates who have passed the prescribed qualifying examinations. However, in the case of SC / ST and Group I candidates, the aggregate percentage of marks in qualifying examinations shall not be less than 45 percent.</p><h2>Selection Process of&nbsp;M.Tech at Madhav Institute of Technology and Science 2019</h2><p><strong>STEP-1</strong></p><p>The Selection will be done on the basis of the common entrance tests for M.Tech program ( PGCET/ GATE ).</p><p><strong>STEP-2</strong></p><p>Shortlisted applicants will be called for Aptitude test &amp; Group Discussion (GD) where applicants will be assessed to his/her verbal, written and analytical skills.</p><p><strong>STEP-3</strong></p><p>After that, the selected applicants will be called for the Personal Interview (PI) to identify &amp; assess the interpersonal skills of the applicant.</p><p><strong>STEP-4</strong></p><p>The Final Selection will be done on the basis of the composite scores of Entrance exam &amp; PI round conducted by the institute.</p></p>
							   </div>
			            </div>
			    </div>
			<br>

        <br>
        
			        <div class="card">
			            <div class="card-header" id="headingThree">
			                <h2 class="mb-0">
			                    <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"><i class="fa fa-plus"></i> For MCA</button>                     
			                </h2>
			            </div>
			            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
			                <div class="card-body">
			                  <h2>Eligibility Criteria for M.C.A. at Madhav Institute of Technology and Science 2019</h2><p>The candidates should have passed the prescribed qualifying examinations in the aggregate of all the years of the degree examinations with not less than 50 percent of the marks. However, in the case of candidates belonging to SC/ST and any other groups classified by the Government of Karnataka for this purpose, the aggregate percentage of marks in qualifying examinations shall not be less than 45% from time to time.</p><h2>Selection Process of&nbsp;M.C.A. at Madhav Institute of Technology and Science 2019</h2><p><strong>STEP-1</strong></p><p>The Selection will be done on the basis of the common entrance tests like&nbsp;PGCET/ KMAT/ MAT for MCA Programs</p><p><strong>STEP-2</strong></p><p>Shortlisted applicants will be called for Aptitude test &amp; Group Discussion (GD) where applicants will be assessed to his/her verbal, written and analytical skills.</p><p><strong>STEP-3</strong></p><p>After that, the selected applicants will be called for the Personal Interview (PI) to identify &amp; assess the interpersonal skills of the applicant.</p><p><strong>STEP-4</strong></p><p>The Final Selection will be done on the basis of the composite scores of Entrance exam &amp; PI round conducted by the institute.</p>          </div>
			            </div>
			        </div>
    </div>
</div>
</body>
</html>