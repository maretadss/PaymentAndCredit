<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/theme1/js/jquery-3.2.1.min.js"/>" type="text/javascript"</script>
        <script src="<c:url value="/resources/theme1/js/bootstrap.min.js"/>" type="text/javascript"</script>
        
        <title>Payment and Credit</title>
    </head>

    <body>
    <form class="form-horizontal center-block" style="width: 600px">
                                       
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Nama</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Nama Lengkap" width="300">
             </div>
             </div>
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Alamat</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Alamat Lengkap" width="300">
             </div>
             </div>
             
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Provinsi</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="sel1">
                        <option>Jawa Timur</option>
                        <option>Jawa Barat</option>
                        <option>Jawa Tengah</option>
                        <option>DKI Jakarta</option>
                        <option>Dll</option>
                    </select>
                    </div>
             </div>
             
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Kota</label>
                    <div class="col-sm-10">
                    <select class="form-control" id="sel1">
                        <option>Malang</option>
                        <option>Kediri</option>
                        <option>Jakarta</option>
                        <option>Yogyakart</option>
                        <option>Dll</option>
                    </select>
                    </div>
             </div>
             
                <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Kecamatan</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="sel1">
                        <option>Malang</option>
                        <option>Kediri</option>
                        <option>Jakarta</option>
                        <option>Yogyakart</option>
                        <option>Dll</option>
                    </select>
                    </div>
             </div>
             
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">Kode Pos</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Kode Pos (optional)" width="300">
             </div>
             </div>
             <div class="form-group">
                 <label class="control-label col-sm-2" for="Nama">No Hp</label>
                  <div class="col-sm-10">
                  <input type="email" class="form-control" id="text" placeholder="Nomor Telepon" width="300">
             </div>
             </div>
            </div>
            
            <div class="form-group"> 
            <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
            <label><input type="checkbox">Sudah Benar</label>
            </div>
            </div>
            </div>
            
            <div class="form-group"> 
              <div class="col-sm-offset-2 col-sm-10">
              <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal">Lanjutkan</button>
            <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-ms">
      <div class="modal-content">
        
        
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Oke</button>
          
        </div>
      </div>
    </div>
  </div>
    </div>
            </div>
            </form>
       
    </body>
</html>
