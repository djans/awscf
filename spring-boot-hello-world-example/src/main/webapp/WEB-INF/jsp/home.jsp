<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Corporations Cogitosum Inc.</title>
            <style>
                table, th, td {
                    border: 0px solid black;
                }
                table {
                    border-spacing: 20px;
                }
            </style>
    </head>
    <body>
        Managed by AWS. Using<br/><br/>
        <table>
            <tr>
                <td><a href="https://github.com/djans/awscf/actions">GITHUBACTIONS (CI-CD)</a></td>
            </tr>
            <tr>
                <td><a href="https://github.com/djans/awscf/blob/main/wlp/config/server.xml">OPENLIBERTY</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/pic/ami.jpg">AMI</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/pic/ec2.jpg">EC2</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/pic/LB.jpg">LB</a> & <a href="${pageContext.request.contextPath}/pic/LB.jpg">TARGET GROUPS</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/pic/ASG.jpg">ASG-Auto Scaling Group</a></td>
            </tr>
            <tr>
                <td><a href="">CODEDEPLOY</a></td>
            </tr>
            <tr>
                <td><a href="">S3</a></td>
            </tr>
            <tr>
                <td><a href="">ROUTE53</a></td>
            </tr>
            <tr>
                <td><a href="">SYSTEM MANAGER</a></td>
            </tr>
            <tr>
                <td><a href="">ECR</a></td>
            </tr>
            <tr>
                <td><a href="">IAM</a></td>
            </tr>
            <tr>
                <td><a href="">CLOUDTRAIL</a></td>
            </tr>
            <tr>
                <td><a href="">CLOUDWATCH</a></td>
            </tr>
            <tr>
                <td><a href="">CLOUFORMATION</a></td>
            </tr>
            <tr>
                <td><a href="">BILLING ( T2.MICRO - SPOT )</a></td>
            </tr>
            <tr>
                <td><a href="">CERT MGR</a> </td>
            </tr>
            <tr>
                <td> ..... </td>
            </tr>
        </table>
    </body>
</html>