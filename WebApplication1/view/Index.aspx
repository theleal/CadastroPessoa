<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.View.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Teste cadastro</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


    <link href="~/view/styles/StyleSheet1.css" rel="stylesheet" type="text/css"/>

</head>
<body>
        <div>
            <form class="form-container" id="form1" runat="server">
        

          

                <div class="forms">
                        <div class="campos">

                            <div>
                            <label for="username">Nomess Completo:</label>
                            <asp:TextBox Id="TextName1" runat="server"/>
                            <br />
                            </div>


                    
                          <%--  <label for="CPF">CPF</label>
                            <asp:TextBox type="text" ID="TextBox1" runat="server" pattern="\d{3}\.?\d{3}\.?\d{3}-?\d{2}" onkeyup="return validarTexto('TextName1')" />
                            <br />--%>

                            <div>
                            <label for="username">Data</label>
                            <asp:TextBox Id="date" runat="server" placeholder="From" type="date"></asp:TextBox>
                            </div>

                            <div>
                            <button type="submit" id="btnEnvia">Enviar</button>
                            </div>

                        </div>

                    </div>
                </form>
                    </div>


       

        <script type="text/javascript" src="/view/script/script.js"></script>

    </body>
</html>
