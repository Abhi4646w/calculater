<!DOCTYPE html>
<html>
<head>
    <title>Calculation Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .result {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            margin-bottom: 20px;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="result">
        <h1>Calculation Result</h1>
        <% Double result = (Double)session.getAttribute("result"); %>
        <p>Result:
        <% 
        if(result!=null)
        {
        	 out.println(result); 
        }
        else
        {
        	 out.println("Can't divide by Zero"); 
        }
       
        %></p>
        <a href="index.jsp">Back to Calculator</a>
    </div>
</body>
</html>
