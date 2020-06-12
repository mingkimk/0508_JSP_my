<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
    .title{
            width:1024px; height:150px;
            margin-left : 40px;
            padding-left:20px;
    }
    .mainP{
            width:1024px; height:768px;
            background-color: rgba(0, 162, 255, 0.671);
            margin-left : 40px;
            padding-left:20px;
     }
     h1 {
         color : red; 
         font-family: "궁서체";
         padding-top:10px
    } 
     p {
         color : white; 
         font-family: "돋음";
         font-size: 15px;     
     }
     table{
         margin-top: 50px;
         text-align: center;
         width: 600px;;        
         background-color:rgb(247, 11, 11);
         border-spacing: 1px;
         padding: 0px;
     }
     tr{
         height: 40px;
         background-color:rgb(229, 226, 226);
     }
     th{
         height: 70px;
         background-color: beige;
         background: url("./img/title.jpg");
         color:hotpink;
         font-size : 20px;
     }
     span{   /* 내가 의도하는 하나의 문장을 의미*/
         font-size: 15px;
     }
     .formEle{
        padding-left: 10px;
        text-align: left;
     }
    </style>
</head>
<body>
    <div class="mainP">
        <h1>Message Board</h1>
        <hr>
        <form action="my_input.jsp" method=post> 
        <table border=0 align=center width='1024' class="txt" align=center >
            <th colspan="5"> 
         게시판
            </th>
            <tr>     
                <td width=100><span>이름</span></td>  
                <td class="formEle" colspan=4>
                    <input type="text" size="20" name="iname" maxlength="8">
                </td>        
            </tr>            
            
            
            <tr>
           
                <td width=100><span>제목</span></td> 
                <td  class="formEle" colspan=3>
                        <input type="text" size="30" name="ititle">    
                </td>            
            </tr>
            <tr>    
                <td  width=100><span>내용</span></td> 
                <td colspan="3" class="formEle">
                    <textarea name="icontents" cols="50" rows="3"></textarea>

                </td>            
            </tr>
            <tr>   
                <td colspan=5>
                    <input type="reset" value="Clear">
                    <input type="submit" value="Save">
                </td>        
            </tr>
        
        </table>
    </form>
    </div>
</body>
</html>


