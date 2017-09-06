<%@ taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Person</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>


    <springForm:form modelAttribute="person" id="form1">
        <table>
            <tr>
                <td>Id Person</td>
                <td><input type="number" name="id" placeholder="Id Person" id="id"/></td>
                <td id="error-id"></td>
            </tr>
            <tr>
                <td>Nama Person</td>
                <td><input type="text" name="nama" placeholder="Nama Person" id="nama"/></td>
                <td id="error-nama"></td>
            </tr>
            <tr>
                <td>Hobi</td>
                <td><input type="checkbox" name="hobi" value="A"/>A</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="checkbox" name="hobi" value="B"/>B</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="checkbox" name="hobi" value="C"/>C</td>
            </tr>
        </table><br/>
        <input type="submit" value="Submit data"/>
    </springForm:form>


</body>


    <script>
       $(document).ready(function(){

           $('#form1').submit(function(){


               var id = $('#id').val();
               var nama = $('#nama').val();
               var arr = [];

               $(':checkbox:checked').each(function (i) {
                   arr[i] = $(this).val();
               });



               if(jQuery.isEmptyObject(arr) || id==='' || nama===''){

                   if(id===''){
                       $('#error-id').text('Id Person masih kosong');
                   }else{
                       $('#error-id').text('');
                   }

                   if(nama===''){
                       $('#error-nama').text('Nama Person masih kosong');
                   }else{
                       $('#error-nama').text('');
                   }

                   if(jQuery.isEmptyObject(arr)){
                       alert('Checkbox masih kosong');
                   }

                   event.preventDefault();
               }else{
                   $('#form1').attr('method','POST');
                   $('#form1').attr('action','form');
               }


           });
       });
    </script>


</html>
