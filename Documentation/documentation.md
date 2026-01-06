<a href="#section1"><button>Tables</button></a>
<a href="#section2"><button>Documentation 01</button></a>
<a href="#section3"><button>Documentation 02</button></a>
<a href="#section4"><button>Documentation 03</button></a>
<a href="#section5"><button>Documentation 04</button></a>
<a href="#section6"><button>Documentation 05</button></a>

<table border=2 id="section1">
<tr>
<td colspan=4>Project Stuructre Details(Admin)</td>
</tr>
<tr>
<td>Buttons(records)</td>
<td>insert input</td>
<td>View Tables</td>
<td>Update </td>
<td></td>
</tr>
<tr>
<td>4*3
<ol>
<li>Insert</li>
<li>Edit</li>
<li>Delete</li>
<li>Update</li>
</ol>
</td>
<td>
<ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product</li>
<li>Address</li>
<li>Bannk Details</li>
</ol>
<td><ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product</li>
<li>Address</li>
<li>Bannk Details</li>
</ol>
<td><ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product</li>
<li>Address</li>
<li>Bannk Details</li>
</ol>
</td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
<table border=2>
<tr>
<td colspan=4>Project Stuructre Details(User)</td>
</tr>
<tr>
<td>Buttons(records)</td>
<td>insert input</td>
<td>View Tables</td>
<td>Update </td>
<td></td>
</tr>
<tr>
<td>4*3
<ol>
<li>Insert</li>
<li>Edit</li>
<li>Delete</li>
<li>Update</li>
</ol>
</td>
<td>
<ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product(No)</li>
<li>Address(Yes)</li>
<li>Bannk Details(Yes)</li>
</ol>
<td><ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product(Yes)</li>
<li>Address(Yes)</li>
<li>Bannk Details(Yes)</li>
</ol>
<td><ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product(No)</li>
<li>Address(Yes)</li>
<li>Bannk Details(Yes)</li>
</ol>
</td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
<table border=2>
<tr>
<td colspan=4>Project Stuructre Details(Walking Customer)</td>
</tr>
<tr>
<td>Buttons(records)</td>
<td>insert input</td>
<td>View Tables</td>
<td>Update </td>
<td></td>
</tr>
<tr>
<td>4*3
<ol>
<li>Insert</li>
<li>Edit</li>
<li>Delete</li>
<li>Update</li>
</ol>
</td>
<td>
<ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product(No)</li>
<li>Address(No)</li>
<li>Bannk Details(No)</li>
</ol>
<td><ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product</li>
<li>Address(No)</li>
<li>Bannk Details(No)</li>
</ol>
<td><ol>
<li>User(Buttons Excluded Yet)</li>
<li>Product(No)</li>
<li>Address(No)</li>
<li>Bannk Details(No)</li>
</ol>
</td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
<table border=2>
<tr>
<th colspan=2>Scopes</th>
</tr>
<tr>
<th>Session</th>
<td>Whole Application</td>
</tr>
<tr>
<th>URL</th>
<td>??</td>
</tr>
<tr>
<th>Query</th>
<td>Same Coding File</td>
</tr>
<tr>
<th>??</th>
<td> ??</td>
</tr>
<tr>
<th>??</th>
<td> ??</td>
</tr>
</table>
<h1>Documentation 01</h1>
<a href="#section1"><button>Top</button></a>
<h2 id="section2">What do (Project?) </h2>
<p>
<ol>

	Login form with authentication using Core Cold Fusion
	How is it done (Procedure?)
	Simple steps
	<li> Create files. (Model Controller View Index Database) </li>
	<li>Open the command box change directory to current project folder and start the server.
	Connect the project to data base through admin panel </li>
	<li>3.	Click the server icon go to Server Home folder> 6F883CD5A668EC6FC314B8AE18742C28-Authentication\lucee-5.4.6.9\WEB-INF\lucee-server\context>> create the file “password” with .txt extension.
</li>
	<li>4.	Click the server icon go to server-admin import the file, it will read the above mentioned file and delete it after once reading.</li>
	<li>Go to server admin >enter the password you set in above mentioned file and log in the server admin
</li>
	<li>Go to workbench login your local host and create a database (data source)</li>
	<li>Go to data source, select the data source name, database type, put the credentials (user, password) of you database.</li>
	<li>Now your project is live and app is connected to database.</li>
	<li>In model write queries</li>
	<li>In view create the input field which will take data from the user in an organized and efficient way and store in variables. </li>
	<li>Model queries will call these variables take the values and run the relevant queries and perform the CRUD operations on the database.</li>
	<li>Index is calling the files with cfinclude.</li>
	<li>This point can be place anywhere since your first mistake. Cfdump. It is used to check any variable weather that is having any value or not and along with this abort is used which abort the rest all code execution.</li>
	<li>When we make input fields we save the values typed by user into the variable name=”value” these values are called in model.cfm file. Further data source name is used to approach the database. Cfquereies are used to run commands on database.</li>
	</ol>
</p>



<table border=2>
<tr>
<th colspan=2><h2>Problems</h2></th></tr>
<tr>
<tr>
<th><h2>Problems </h2></th>
<th><h2> Solutions</h2></th>
</tr>
<tr>
<td>
<ul>
<li>
	In view I have different forms and every form is called to an action page (name of file is added in the beginning of the form). Before I set the actions (database queries) in a single file. Every form was calling this single file. 	But now I have segregated them and every form is calling to a different file and each file contains a single query of data base. Now it is working.
	</li>
</ul></td>

<td>
<ul>
<li>Data truncation:</li>
<li>Data too long for column 'password' at row 1</li>
<li>The problem is that its datatype is varchar like others and capacity is much more than the value I an entering, why this specifically having this problem.	My variables in Insert into were not correct. Anonymous behavior was obvious. One thing to note that data will be received from form and you will used form. And then the value of name in input field will be passed to values.</li>
<li>
I am querying data from database and it is fetching but not displaying on the interface.</li>
<li>	You are call the variable containing the value but it is showing errors and you are frustrated.</li>
<li>Just recheck did you call these variables in loop if not you will remain stuck.</li>
</ul></td>
	
	
	
	</tr>
</table>


<h2>Outcomes</h2>
<a href="#section1"><button>Top</button></a>
<h2 id="section3">Documentation 02</h2>
<ul>
<li>I made a form yesterday </li>
<li>Functions:</li>
<li>Create the table in database</li>
<li>Insert data in rows (Signup)
</li>
<li>Log in with accurate credentials</li>
<li>Delete any row based on id</li>
<li>Show the table</li>
<li>Delete the table</li>
<li><h2>Task Today: </h2></li>
<li>put the controls when an admin logs in</li>
<li>And when a user log in just show him the product no control.</li>
<li><h2>Brain Storming:</h2></li>
<li>The data through user interface<tags> stores in data base. CRUD is being performed in the database with database queries. I am showing the database data on the interface. I am showing control buttons on the main page.</li>
<h2></h2>
<table border=1>
<tr>
<th colspan=2>Problem/Confusion</th>
</tr>
<tr>
<th>Problem/Confusion</th>
<th>Solution</th>
</tr>
<tr>
<td><li>Role column was added, data was shown on main page but not available in database, it is not acceptable behavior that data is directly rendered to the interface because all the data was stored in DB and fetched from there.</li></td>
<td><li><li>	In values I missed the comma to separate the role and mail and both values were save in first column and saved in that column and role column was empty and show from data base on inter face further in column name </li><li>I missed the role column name. When I added name there values line problem raised. 
</li></li></td>
</tr>
<tr><td><li>What is datasource</li></td>
<td><li>Datasource is the name of the database file.</li></td>
</tr>
<tr><td><li>In an app do I have to create to multiple datasources or add multiple column in same datasource?</li></td>
<td><li>By mistake I made new data source for a new table. I think the answer is in the question. Multiple tables will be made under one datasource.</li></td>
</tr>
<tr><td><li></li></td>
<td><li></li></td>
</tr>
<tr><td>Description data truncation	Keep such columns input limit vast. <li></li></td>
<td><li>Mine is low so data truncation problem arised.</li></td>
</tr>
</table>
</ul>
	
	

<a href="#section1"><button>Top</button></a>
<h2 id="section4">Documentation 03</h2>
Comments done
there are three types of comments
•	ColdFusion (Server side )
•	HTML, (Client side)
•	Script 
Input types are made correct
Password is hashed,
mail cant except just string, it must be in mail format

Problems, Ideas	Outcome
Where Condition (insert the data if condition is fulfilled)
	No solution found in SQL (try to solve it by HTML Form).
HTML Form , input attributes	I just visited many website signup page none of them is confirming the password. So I am also going to drop it for the moment. Will see it later on.
Next task is to add update functionalities in tables. So that I may replace the old values in records with new ones.	Using update query it is possible
What it I need to add column run time?	
Search bar	Will be done by JS or jQuery
Set the path, if code files are placed in separate folders, app should run smoothly.	
	
<h2>29/12/2025</h2>
<h2>Question</h2>
<ol>
<li><p>Why Does URL expire?</p></li>
<li><p>Precised Code for Authentication</p></li>
<li><p>Include Folder</p></li>
<li><p></p></li>
</ol>

<h2>30-12-2025</h2>
<h2>The Problem arised today</h2>
<h2>command 'cfml.shortcuts.toggleCFTagComment' not found</h2>
<h2>I searched it but the exact solution is not found yet</h2>
<h3>So... Pending</h3>
<h3>2: Commented Code<!---<cfdump  var=#url.id#>---></h3>
<h3>One of the pending problems(incompete flow of data)</h3>
<h2>admin.cfm is being loggedin but not displaying anything <strong>(cf abort) was used on the top of the page</strong></h2>
<h2>31-12-2025</h2>
<table border=2>
<tr>
<a href="#section1"><button>Top</button></a>
<th colspan=3 id="section5">Today's outcome</th>
</tr>
<tr>
<th>Problems</th>
<th>Research </th>
<th>Solutions </th>
</tr>
<tr>
<td>Documentation.md cant be accessed without login(admin/password)</td>
<td>I have seen three files have not found any authentication code over there. it must be behind than expected. </td>
<td>Solutions </td>
</tr>
<tr>
<td>Problems</td>
<td>Research </td>
<td>Solutions </td>
</tr>
<tr>
<td>Problems</td>
<td>Research </td>
<td>Solutions </td>
</tr>
</table>
<a href="#section1"><button>Top</button></a>
<div id="section6">Today's outcome</div>

<h1>06/01/2026</h1>
<p>The scene is that i am to achieve the functionality of uploading images(single or multiple)renaming it by 1++ auto increment and then creating a new folder giving it name of product id </p>
<p>The Differendce between "upload" and "uploadall"</p>
<p>Upload will send form normally</p>
<p>Upload all with send five forms and create an array of  structs</p>
<p>You need to consider the index of struct rest will be okay,other wise it will stuck to find the index and give unexpected behaviour</p>