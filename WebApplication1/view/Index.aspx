<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.View.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Teste cadastro</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


    <link href="~/view/styles/StyleSheet1.css" rel="stylesheet" type="text/css"/>

</head>
<body>


                <form class="form-container" id="form1" runat="server">
                <div class="main-container">

                        <div class="forms">
                            <div class="campos-esquerda">

                                <div>
                                    <label for="username" >Nome completo:</label>
                                    <br />
                                    <asp:TextBox Id="CampoNome" runat="server" required/>
                                    <br />
                                </div>

                                <br/>


                                <div>
                                    <label for="CPF">CPF:</label>
                                    <br />
                                    <asp:TextBox type="text" Id="CampoCPF" runat="server"/>
                                </div>

                                <br/>

                                <div>
                                    <label for="Date">Data de nascimento:</label>
                                    <br />
                                    <asp:TextBox Id="date" runat="server" placeholder="From" type="date"></asp:TextBox>
                                </div>

                                <br/>


                                <div>
                                </div>

                            </div>
                            <div class="campos-direita">
                                
                                
                                <div class="selectGender">
                                      <label Id="texto">Selecione o genêro</label>
                                        <br />
                                      <select name="Genêro" id="lang">
                                        <option value="c#">Masculino</option>
                                        <option value="C++">Feminino</option>
                                        <option value="C++">Outros</option>

                                      </select>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Submit" BorderStyle="Solid" ToolTip="Submit"/>
                
                </div>
                    </form>

       

        <script type="text/javascript" src="/view/script/script.js"></script>

    </body>
</html>
