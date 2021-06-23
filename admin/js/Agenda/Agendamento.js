var Calendar = function () {
    var runCalendar = function () {
        var home = $("#home").attr('data-val');
        var metodo = $("#metodo").val();
        var urlValida = home + 'library/Controller/Ajax.Controller.php?acao=Ajax&controller=' + metodo;
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                customButtons: {
                    legendaButton: {
                        click: function () {
                            $("#j_legenda").click()
                        }
                    }, gridButton: {
                        click: function () {
                            $("#calendar").fadeOut('fast');
                            $("#grid").fadeIn('slow')
                        }
                    }, pesquisaButton: {
                        click: function () {
                            $("#j_pesquisar").click()
                        }
                    }, calendarButton: {}
                },
                bootstrapFontAwesome: {
                    legendaButton: 'fa-align-left',
                    gridButton: 'fa-list',
                    pesquisaButton: 'fa-cog active',
                    calendarButton: 'fa-calendar'
                },
                locale: 'pt-br',
                themeSystem: 'bootstrap',
                plugins: ['bootstrap', 'dayGrid', 'timeGrid', 'list', 'interaction'],
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'legendaButton,pesquisaButton calendarButton,gridButton dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                },
                buttonText: {today: 'Hoje', month: 'Mês', week: 'Semana', day: 'Dia', list: 'Lista'},
                allDaySlot: !1,
                slotEventOverlap: !0,
                eventLimitText: 'Mais',
                navLinks: !0,
                editable: !0,
                eventLimit: 2,
                selectable: !0,
                slotDuration: '00:10:00',
                minTime: "06:00:00",
                maxTime: "23:00:00",
                slotLabelFormat: {hour: 'numeric', minute: '2-digit', omitZeroMinute: !1, meridiem: 'short'},
                events: {
                    url: urlValida, failure: function () {
                        Funcoes.Alerta('Não foi possível carregar os Agendamentos no Calendário!');
                        $("#grid").fadeIn('fast');
                        $("#calendar").fadeOut('slow')
                    }
                },
                extraParams: function () {
                    return {cachebuster: new Date().valueOf()}
                },
                select: function (info) {
                    var dia = Calendar.VerificaNumero(info.start.getDate());
                    var mes = Calendar.VerificaNumero((info.start.getMonth() + 1));
                    var hora_inicio;
                    var dt_agenda;
                    var hora = Calendar.VerificaNumero(info.start.getHours());
                    var minuto = Calendar.VerificaNumero(info.start.getMinutes());
                    if (hora > 0)
                        hora_inicio = hora + ':' + minuto;
                    if (!hora_inicio) {
                        hora_inicio = '08:00'
                    }
                    dt_agenda = dia + '/' + mes + '/' + info.start.getFullYear();
                    $("#nu_hora_inicio_agenda").val(hora_inicio);
                    $("#dt_agenda").val(dt_agenda);
                    $("#nu_hora_fim_agenda").val(null);
                    $("#ds_observacao").val(null);
                    $('#co_agenda').val(null);
                    $('#st_status').select2("destroy").val(1).select2({allowClear: !1});
                    Calendar.LimpaCombos();
                    Calendar.LimpaValidacao();
                    $("#j_cadastro").click()
                },
                eventClick: function (info) {
                    info.jsEvent.preventDefault();
                    var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', info.event.id);
                    Calendar.CarregaDadosAgendamento(dados, info.event.id)
                },
                eventDrop: function (info) {
                    var hoje = new Date();
                    hoje.setHours(0);
                    hoje.setMinutes(0);
                    hoje.setSeconds(0);
                    var coAgenda = info.event.id;
                    var dadosAg = Funcoes.Ajax('Agenda/GetAgendaAjax', coAgenda);
                    if (dadosAg.st_status > 4) {
                        Funcoes.Alerta('Não pode Mudar Agendamento com esse status.');
                        info.revert()
                    } else if (info.event.start < hoje) {
                        Funcoes.Informativo('Não pode Mudar Agendamento para uma data inferior a de hoje.');
                        info.revert()
                    } else if (info.oldEvent.start < hoje) {
                        Funcoes.Informativo('Não pode Mudar Agendamento passado.');
                        info.revert()
                    } else {
                        $("#modal_confirma_ativacao .modal-body b").text("Confirma a mudança do agendamento para " + info.event.start.toLocaleString());
                        $("#model_confirmacao_ativacao").click()
                    }
                    $('#btn-success-modal_confirma_ativacao').click(function () {
                        var diaIni = Calendar.VerificaNumero(info.event.start.getDate());
                        var mesIni = Calendar.VerificaNumero((info.event.start.getMonth() + 1));
                        var anoIni = Calendar.VerificaNumero(info.event.start.getFullYear());
                        var horaIni = Calendar.VerificaNumero(info.event.start.getHours());
                        var minutoIni = Calendar.VerificaNumero(info.event.start.getMinutes());
                        var diaFim = Calendar.VerificaNumero(info.event.end.getDate());
                        var mesFim = Calendar.VerificaNumero((info.event.end.getMonth() + 1));
                        var anoFim = Calendar.VerificaNumero(info.event.end.getFullYear());
                        var horaFim = Calendar.VerificaNumero(info.event.end.getHours());
                        var minutoFim = Calendar.VerificaNumero(info.event.end.getMinutes());
                        var dt_inicio_agenda = anoIni + '-' + mesIni + '-' + diaIni + ' ' + horaIni + ':' + minutoIni + ':00';
                        var dt_fim_agenda = anoFim + '-' + mesFim + '-' + diaFim + ' ' + horaFim + ':' + minutoFim + ':00';
                        var data = {
                            dt_inicio_agenda: dt_inicio_agenda,
                            dt_fim_agenda: dt_fim_agenda,
                            co_agenda: info.event.id
                        };
                        var dados = Funcoes.Ajax('Agenda/DropAgendamentoAjax', data);
                        if (dados) {
                            if (dados.sucesso && dados.msg === "atualizado") {
                                Funcoes.AtualizadoSucesso()
                            } else {
                                Funcoes.Alerta(dados.msg)
                            }
                            if (dados.sucesso) {
                                Calendar.Renderiza()
                            }
                        } else {
                            Funcoes.Erro("Erro: " + dados.msg)
                        }
                    });
                    $('.cancelar').click(function () {
                        info.revert()
                    })
                },
                eventResize: function (info) {
                    info.revert()
                }
            });
            calendar.render()
        })
    };
    return {
        init: function () {
            runCalendar();
            $('#no_cliente,#no_servico,#no_profissional').parent(".form-group").parent("div").hide().css('display', 'none');
            $('#st_servico,#st_cliente,#st_profissional').change(function () {
                apresentacao($(this).attr('id').replace('st_', ''));
            });

            function apresentacao($name) {
                if ($('#st_' + $name).prop("checked")) {
                    $('#co_' + $name).removeClass('visivel').parent(".form-group").parent("div").hide();
                    $('#no_' + $name).parent(".form-group").parent("div").show()
                } else {
                    $('#co_' + $name).addClass('visivel').parent(".form-group").parent("div").show();
                    $('#no_' + $name).parent(".form-group").parent("div").hide()
                }
            }

            $('#grid, #pesquisandoAgendamento').hide();
            $(window).load(function () {
                $('.fc-calendarButton-button').addClass('active');
                $('.fc-pesquisaButton-button').removeClass('btn-primary').addClass('btn-light-grey');
                $('.fc-legendaButton-button').removeClass('btn-primary').addClass('btn-warning');
                $('.btn').click(function () {
                    $('.fc-calendarButton-button').addClass('active')
                })
            });
            $('#carregaCalendar').click(function () {
                $("#grid").fadeOut('fast');
                $("#calendar").fadeIn('slow');
                return !1
            });
            $('#j_pesquisa').click(function () {
                $("#j_pesquisar").click();
                return !1
            });
            $('#j_legendas').click(function () {
                $("#j_legenda").click();
                return !1
            });
            $("#CadastroAgendamento").submit(function () {
                var data = $(this).serializeArray();
                var metodo = $(this).attr('action').split('/');
                var dados = Funcoes.Ajax(metodo[5] + '/' + metodo[6], data);
                if (dados) {
                    if (dados.sucesso && dados.msg === "cadastrado") {
                        Funcoes.CadastradoSucesso()
                    } else if (dados.sucesso && dados.msg === "atualizado") {
                        Funcoes.AtualizadoSucesso()
                    } else {
                        Funcoes.Alerta(dados.msg)
                    }
                    if (dados.sucesso) {
                        Calendar.Renderiza()
                    }
                } else {
                    Funcoes.Erro("Erro: " + dados.msg)
                }
                return !1
            });
            $('.btn-visualizar').click(function () {
                var coAgenda = $(this).attr('data-co-agenda');
                var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', coAgenda);
                Calendar.CarregaDadosAgendamento(dados, coAgenda);
            });
            $(".btn-deletar").click(function () {
                Funcoes.TiraValidacao('ds_motivo');
                $("#j_deletar").click();
                $('#co_agenda_listagem').val(Calendar.GetCoAgenda($(this)))
            });
            $("#DeletarAgendamento").submit(function () {
                var data = {ds_motivo: $('#ds_motivo').val(), co_agenda: Calendar.GetCoAgenda($(this))};
                var metodo = $(this).attr('action').split('/');
                var dados = Funcoes.Ajax(metodo[5] + '/' + metodo[6], data);
                if (dados) {
                    if (dados.sucesso && dados.msg === "atualizado") {
                        Funcoes.AtualizadoSucesso()
                    } else {
                        Funcoes.Alerta(dados.msg)
                    }
                    if (dados.sucesso) {
                        Calendar.Renderiza()
                    }
                } else {
                    Funcoes.Erro("Erro: " + dados.msg)
                }
                return !1
            });
            $(".btn-historico").click(function () {
                var home = $("#home").attr('data-val');
                var coAgenda = Calendar.GetCoAgenda($(this));
                var dados = Funcoes.Ajax('Agenda/GetUrlHistoricoAgendamento', coAgenda);
                if (dados) {
                    window.location.href = home + dados
                } else {
                    Funcoes.Erro("Erro: " + dados.msg)
                }
                return !1
            });
            $(".btn-editar").click(function () {
                var coAgenda = Calendar.GetCoAgenda($(this));
                var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', coAgenda);
                $('#st_status').select2("destroy").val(dados.st_status).select2({allowClear: !1});
                $('#co_cliente').select2("destroy").val(dados.co_cliente).select2({allowClear: !1});
                $("#dt_agenda").val(dados.dia);
                $("#nu_hora_inicio_agenda").val(dados.inicio);
                $("#nu_hora_fim_agenda").val(dados.fim);
                $("#ds_observacao").val(dados.ds_observacao);
                Funcoes.TiraValidacao('dt_agenda');
                Funcoes.TiraValidacao('nu_hora_inicio_agenda');
                Calendar.LimpaValidacao();
                $("#j_cadastro").click();
                $('#co_servico').select2("destroy").val(dados.co_servico).select2({allowClear: !1});
                $('#co_profissional').select2("destroy").val(dados.co_profissional).select2({allowClear: !1});
                $("#co_agenda").val(coAgenda)
            });
            $('#novaAgenda').click(function () {
                var hoje = new Date();
                var dia = Calendar.VerificaNumero(hoje.getDay());
                var mes = Calendar.VerificaNumero((hoje.getMonth() + 1));
                $("#nu_hora_inicio_agenda").val('08:00');
                $("#dt_agenda").val(dia + '/' + mes + '/' + hoje.getFullYear());
                $("#nu_hora_fim_agenda").val(null);
                $("#ds_observacao").val(null);
                $('#co_agenda').val(null);
                $('#st_status').select2("destroy").val(1).select2({allowClear: !1});
                Calendar.LimpaCombos();
                Calendar.LimpaValidacao();
                $("#j_cadastro").click();
                return !1
            });
            $(".btn-finalizar").click(function () {
                var data = {co_agenda: Calendar.GetCoAgenda($(this))};
                var dados = Funcoes.Ajax('Agenda/FinalizarAgendaAjax', data);
                if (dados) {
                    if (dados.sucesso && dados.msg === "atualizado") {
                        Funcoes.AtualizadoSucesso()
                    } else {
                        Funcoes.Alerta(dados.msg)
                    }
                    if (dados.sucesso) {
                        Calendar.Renderiza()
                    }
                } else {
                    Funcoes.Erro("Erro: " + dados.msg)
                }
                return !1
            });
            $("#PesquisaAvancadaAgendamento").submit(function () {
                var data = $(this).serializeArray();
                var dados = Funcoes.Ajax('Agenda/AgendamentoPesquisaAvancada', data);
                if (dados.sucesso) {
                    Funcoes.Informativo('Pesquisando....');
                    Calendar.Renderiza(1)
                } else {
                    Funcoes.Erro("Erro: " + dados.msg)
                }
                return !1
            })
        }, CarregaDadosAgendamento: function (dados, coAgenda) {
            $('.st_status b').html($('#Status-Agendamento-' + dados.st_status).html());
            $('.cliente b').text(dados.cliente);
            $('.profissional b').text(dados.profissional);
            $('.servico b').text(dados.no_servico);
            $('.observacao b').text(dados.ds_observacao);
            $('.motivo b').text(dados.ds_motivo);
            $('.usuario b').text(dados.usuario);
            $('.dia b').text(dados.dia);
            $('#co_agenda_listagem').val(coAgenda);
            $('.periodo b').text(' de ' + dados.inicio + ' a ' + dados.fim);
            $('.acao').hide();
            if (dados.st_status < 5) {
                $('.btn-finalizar').show();
                $('.btn-editar').show();
                $('.btn-deletar').show()
            }
            if (dados.st_status == 8) {
                $('#form-group-motivo').show()
            } else {
                $('#form-group-motivo').hide()
            }
            $("#j_listar").click()
        }, GetCoAgenda: function (element) {
            var coAgenda = $('#co_agenda_listagem').val();
            if (!coAgenda) {
                coAgenda = element.attr('data-co-agenda')
            }
            return coAgenda
        }, LimpaCombos: function () {
            $('#co_servico, #co_profissional, #co_cliente').select2("destroy").val(null).select2({allowClear: !1});
            $('#no_servico, #no_profissional, #no_cliente').val('')
        }, Renderiza: function (time) {
            time = time || 3000;
            $(".close").click();
            setTimeout(function () {
                location.reload()
            }, time)
        }, LimpaValidacao: function () {
            Funcoes.TiraValidacao('nu_hora_fim_agenda');
            Funcoes.TiraValidacao('st_status')
        }, VerificaNumero: function (valor) {
            if (valor < 10) {
                valor = '0' + valor
            }
            return valor
        }
    }
}();
Calendar.init()