$(function () {
    $("#btn-success-DesativarProfissional").click(function () {
        var data = {
            ds_motivo: $('#ds_observacao').val().trim(),
            codigo: $('#desativar_codigo').val()
        };
        var metodo = $(this).attr("data-url-action");
        var dados = Funcoes.Ajax(metodo, data);
        if (dados) {
           if (dados.sucesso && dados.msg === "deletado") {
                Funcoes.DeletadoSucesso();
            } else {
                Funcoes.Alerta(dados.msg);
            }
            if (dados.sucesso) {
                $(".close").click();
                location.reload();
            }
        } else {
            Funcoes.Erro("Erro: " + dados.msg);
        }
        return false;
    });

    $("#btn-success-AtivarProfissional").click(function () {
        var data = {
            codigo: $('#desativar_codigo').val()
        };
        var metodo = $(this).attr("data-url-action");
        var dados = Funcoes.Ajax(metodo, data);
        if (dados) {
            if (dados.sucesso && dados.msg === "atualizado") {
                Funcoes.AtualizadoSucesso();
            } else {
                Funcoes.Alerta(dados.msg);
            }
            if (dados.sucesso) {
                $(".close").click();
                location.reload();
            }
        } else {
            Funcoes.Erro("Erro: " + dados.msg);
        }
        return false;
    });

    $(".acao").click(function () {
        var id = $(this).attr("id");
        $('#desativar_codigo').val(id);
    });

});