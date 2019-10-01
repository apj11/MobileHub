<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <section id="slider">
        <!--slider-->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="col-sm-6">
                                    <%--<span class="pull-right">(32)</span>--%>
                                    <asp:ImageButton ID="ImageButton2" ImageUrl="images/iphoneX.jpg" runat="server" OnClick="ImageButton2_Click" />
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-6">
                                    <%--<div class="pull-right">(5)</div>--%>
                                    <asp:ImageButton ID="ImageButton3" ImageUrl="images/sony.jpg" runat="server" OnClick="ImageButton3_Click" />
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-6">
                                    <%-- <asp:Button ID="btnFilter" runat="server" Text="Filter" OnClientClick="return my_function()" />--%>
                                    <asp:ImageButton ID="ImageButton4" ImageUrl="images/samsung1.jpg" runat="server" OnClick="ImageButton4_Click" />
                                </div>
                            </div>

                        </div>
                        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: auto;
        }

        .wrapper {
            margin: 0px auto;
            width: 600px;
        }

        .wrapper1 {
            margin: 0px auto;
            width: 700px;
        }

        .auto-style3 {
            width: 160px;
        }

        .auto-style4 {
            height: 20px;
            width: 160px;
        }

        #rangeBox { /* carry complete  range box*/
            width: 300px;
            height: 100px;
        }

        #sliderBox {
            position: relative;
            top: 0%;
            width: 300px; /*2x width*/
        }

        #slider0to50 {
            width: 150px; /*1x width*/
            position: absolute;
            left: 0%;
        }

        #slider51to100 {
            width: 150px; /*1x width*/
            position: absolute;
            left: 50%;
        }

        #inputRange {
            position: relative;
            top: 50%;
        }

            #inputRange::after {
                content: "";
                clear: both;
                display: block;
            }

            #inputRange #min {
                width: 40%;
                float: left;
            }

            #inputRange #max {
                width: 40%;
                float: right;
            }

        #ContentPlaceHolder1_DataList2 {
            width: 100%;
        }
    </style>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <div class="brands_products">
                            <!--brands_products-->
                            <h2>Brands</h2>
                            <div class="brands-name">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="Samsung.aspx"><%-- <h2>Price Range</h2>
                            <div class="well text-center">
                                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br />
                                <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                            </div>--%>Samsung</a></li>
                                    <li><a href="Apple.aspx"><%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' Height="212px" Width="160px" />--%>Apple</a></li>
                                    <li><a href="Oneplus.aspx"><%--<button class="btn btn-primary" onclick="my_function()">Filter</button>--%>Oneplus</a></li>
                                    <li><a href="Sony.aspx"><%-- <asp:Button ID="btnFilter" runat="server" Text="Filter" OnClientClick="return my_function()" />--%>Sony</a></li>
                                    <li><a href="HTC.aspx"><%-- <h2>Price Range</h2>
                            <div class="well text-center">
                                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br />
                                <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                            </div>--%>HTC</a></li>
                                </ul>
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                            </div>
                        </div>
                        <!--/brands_products-->
                        <div class="price-range" style="padding: 10px; border: 1px solid #f2f2f2;">
                            <!--price-range-->
                            <div data-role="main" class="ui-content">
                                <div id="rangeBox" style="width: 100%">
                                    <div id="sliderBox" style="width: 100%">
                                        <input type="range" id="slider0to50" step="10" min="0" max="50000" style="width: 50%">
                                        <input type="range" id="slider51to100" step="10" min="50000" max="100000" style="width: 50%">
                                    </div>
                                    <div id="inputRange">
                                        <input type="number" step="10" min="0" max="50000" placeholder="Min" id="min">
                                        <input type="number" step="10" min="51000" max="100000" placeholder="Max" id="max" />
                                        <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' Height="212px" Width="160px" />--%>
                                        <asp:Button ID="btnFilter" OnClientClick="return my_function()" OnClick="btnFilter_Click" runat="server" Text="Filter" />
                                        <%-- <asp:Button ID="btnFilter" runat="server" Text="Filter" OnClientClick="return my_function()" />--%>
                                        <asp:HiddenField ID="h1" runat="server" />
                                        <asp:HiddenField ID="h2" runat="server" />

                                    </div>
                                </div>
                            </div>
                            <%-- <h2>Price Range</h2>
                            <div class="well text-center">
                                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br />
                                <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                            </div>--%>
                        </div>
                        <!--/price-range-->
                    </div>
                </div>

                <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>
                        <div class="wrapper">
                            <div style="width: 600px;">
                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                                    <ItemTemplate>
                                        <div style="padding: 0px 30px 10px 20px;">
                                            <table cellpadding="0" cellspacing="0" class="auto-style1">
                                                <tr>
                                                    <td class="auto-style3">
                                                        <a href="#">
                                                            <asp:ImageButton ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' ID="ImageButton1" Height="212px" Width="160px" PostBackUrl='<%#"PhoneDetails.aspx?id="+Eval("PhoneId") %>' runat="server" />
                                                            <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' Height="212px" Width="160px" />--%></a>

                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px;" class="auto-style4">
                                                        <a href="#">
                                                            <asp:Label ID="lblPhoneName" Text='<%#Eval("PhoneName") %>' runat="server"></asp:Label></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px;">NRs.
                                                        <asp:Label ID="lblPrice" Text='<%#Eval("PhonePrice") %>' runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px;">
                                                        <asp:DropDownList ID="ddlQuantity" runat="server" Width="45px">
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem>4</asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                            <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:Button ID="btnAddtoCart" runat="server" Text="Cart" CommandArgument='<%# Eval("PhoneId")%>' CommandName="addtocart" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>
                    </div>
                    <!--features_items-->

                    <div class="recommended_items">
                        <!--recommended_items-->
                        <h2 class="title text-center">recommended items</h2>
                        <div class="wrapper1">
                            <div style="width: 700px;">
                                <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                                    <ItemTemplate>
                                        <div style="padding: 10px;">
                                            <table cellpadding="0" cellspacing="0" class="auto-style1" style="width: 100%;">
                                                <tr>
                                                    <td style="width: 100%; display: flex; justify-content: center;">
                                                        <asp:ImageButton ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' ID="ImageButton1" Height="212px" Width="160px" PostBackUrl='<%#"PhoneDetails.aspx?id="+Eval("PhoneId") %>' runat="server" />
                                                        <%--<asp:Image ID="Image1" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' runat="server" Height="212px" Width="160" />--%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;" class="auto-style2">
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("PhoneName") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2" style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;">NRs.&nbsp;
                            <asp:Label ID="lblPrice" Text='<%#Eval("PhonePrice") %>' runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2" style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;">
                                                        <asp:DropDownList ID="ddlQuantity" runat="server" Width="45px">
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem></asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                            <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:Button ID="btnAddtoCart" runat="server" CommandName="addtocart" CommandArgument='<%#Eval("PhoneId") %>' Text="Card" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>

                    </div>
                    <!--/recommended_items-->

                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">

        function my_function() {
            var min = document.getElementById("min").value;
            var max = document.getElementById("max").value;
            document.getElementById('<%=h1.ClientID%>').value = min;
            document.getElementById('<%=h2.ClientID%>').value = max;


        }








        var sliderLeft = document.getElementById("slider0to50");
        var sliderRight = document.getElementById("slider51to100");
        var inputMin = document.getElementById("min");
        var inputMax = document.getElementById("max");

        ///value updation from input to slider
        //function input update to slider
        function sliderLeftInput() {//input udate slider left
            sliderLeft.value = inputMin.value;
        }
        function sliderRightInput() {//input update slider right
            sliderRight.value = (inputMax.value);//chnage in input max updated in slider right
        }

        //calling function on change of inputs to update in slider
        inputMin.addEventListener("change", sliderLeftInput);
        inputMax.addEventListener("change", sliderRightInput);


        ///value updation from slider to input
        //functions to update from slider to inputs 
        function inputMinSliderLeft() {//slider update inputs
            inputMin.value = sliderLeft.value;
        }
        function inputMaxSliderRight() {//slider update inputs
            inputMax.value = sliderRight.value;
        }
        sliderLeft.addEventListener("change", inputMinSliderLeft);
        sliderRight.addEventListener("change", inputMaxSliderRight);

    </script>
</asp:Content>

