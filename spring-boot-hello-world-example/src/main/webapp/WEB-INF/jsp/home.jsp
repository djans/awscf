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
            .container {
                display: flex;
                align-items: flex-start;
            }
        </style>
        <script>
            function changeIframeContent(url) {
                document.getElementById('myIframe').src = url;
            }
        </script>
    </head>
    <body>
        Managed by AWS. Using<br/><br/>
        <div class="container">
            <table>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/ec2.jpg')">EC2</a></td>
                </tr>
                <tr>
                    <td><a target="_blank" href="https://github.com/djans/awscf/blob/main/wlp/config/server.xml">OPENLIBERTY</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/AMI.jpg')">AMI</a></td>
                </tr>
                <tr>
                    <td><a target="_blank" href="https://github.com/djans/awscf/actions">GITHUBACTIONS (CI-CD)</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/LB.jpg')">LB</a> & <a href="#" onclick="changeIframeContent(${pageContext.request.contextPath}/pic/LB.jpg">TARGET GROUPS</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/ASG.jpg')">ASG-Auto Scaling Group</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/CODEDEPLOY.jpg')">CODE DEPLOY</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/S3.jpg')">S3</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/ROUTE53.jpg')">ROUTE 53</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/SYSMANAGER.jpg')">SYSTEM MANAGER</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/ECR.jpg')">ECR</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/IAM.jpg')">IAM</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/CLOUDTRAIL.jpg')">CLOUDTRAIL</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/CLOUDWATCH.jpg')">CLOUDWATCH</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/CLOUFORMATION.jpg')">CLOUDFORMATION</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/BILLING.jpg')">BILLING</a></td>
                </tr>
                <tr>
                    <td><a href="#" onclick="changeIframeContent('${pageContext.request.contextPath}/pic/CERTMGR.jpg')">CERT MANAGER</a></td>
                </tr>
                <tr>
                    <td> ..... </td>
                </tr>
            </table>
            <div>
                <iframe id="myIframe"
                        width="1024"
                        height="648"
                        src="https://www.cogitosum.net/pic/ec2.jpg/"
                        title="AWS"
                        scrolling="no"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen>
                </iframe>
            </div>
        </div>
    </body>
</html>