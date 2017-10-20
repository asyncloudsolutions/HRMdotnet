<%@ Page Title="" Language="C#" MasterPageFile="~/hrm.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="hrmportal.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
  <form>
    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">Name</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="name" placeholder="Name">
      </div>
    </div>
    <div class="form-group row">
      <label for="email" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="email" placeholder="Email">
      </div>
    </div>
       <div class="form-group row">
      <label for="contact" class="col-sm-2 col-form-label">Contact</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="contact" placeholder="Contact Number">
      </div>
    </div>
       <div class="form-group row">
      <label for="address" class="col-sm-2 col-form-label">Address</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="address" placeholder="Address">
      </div>
    </div>
       <div class="form-group row">
      <label class="col-sm-2 col-form-label" for="inlineFormCustomSelect">Qualification</label>
           <div class="col-sm-4">
        <select id="inlineFormCustomSelect">
            <option selected>Choose...</option>
            <option value="1">Master of computer application</option>
            <option value="2">Bachelor of Technology</option>
            <option value="3">Master of Buisness Administration</option>
        </select>
               </div>
    </div>
      <div class="form-group row">
      <label for="address" class="col-sm-2 col-form-label">Gender</label>
      <div class="col-sm-4">
         <input class="form-check-input" type="radio" name="gridRadios" id="male" value="Male" checked>Male      
         <input class="form-check-input" type="radio" name="gridRadios" id="female" value="Female">Female
      </div>
    </div>
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Save</button>
          <button type="submit" class="btn btn-primary">Reset</button>
      </div>
    </div>
  </form>
</div>
</asp:Content>
