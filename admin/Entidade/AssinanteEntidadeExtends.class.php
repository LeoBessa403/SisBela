<?php

/**
 * Assinante.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class AssinanteEntidadeExtends extends AbstractEntidade
{
    private $co_facilidade_beneficio;
    private $co_funcionamento;

    /**
     * @return FacilidadeBeneficioEntidade $co_facilidade_beneficio
     */
    public function getCoFacilidadeBeneficio()
    {
        return $this->co_facilidade_beneficio;
    }

    /**
     * @param $co_facilidade_beneficio
     * @return mixed
     */
    public function setCoFacilidadeBeneficio($co_facilidade_beneficio)
    {
        return $this->co_facilidade_beneficio = $co_facilidade_beneficio;
    }

    /**
     * @return FuncionamentoEntidade $co_funcionamento
     */
    public function getCoFuncionamento()
    {
        return $this->co_funcionamento;
    }

    /**
     * @param $co_funcionamento
     * @return mixed
     */
    public function setCoFuncionamento($co_funcionamento)
    {
        return $this->co_funcionamento = $co_funcionamento;
    }
}