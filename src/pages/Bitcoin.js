import React from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

import "./style.css";

import logo from './a.png';

export default function Dolar() {
    
    async function valorMoeda(){  
        try{
            const getMoeda = await axios.get("https://economia.awesomeapi.com.br/all/BTC-BRL");
            const valor = parseFloat(getMoeda.data.BTC['high']).toFixed(2)
            document.querySelector("h2").innerHTML = "R$ " + valor  
        }catch{
            alert("Erro ao carregar os dados");
        }
    }
    
    async function converter(){   
        const getMoeda = await axios.get("https://economia.awesomeapi.com.br/all/BTC-BRL");
        const valor = parseFloat(getMoeda.data.BTC['high']).toFixed(2)
        let inputValueCon = parseFloat(document.querySelector("#valueCon").value)
        let inputValueReal = parseFloat(document.querySelector("#valueReal").value)
      
        if (isNaN(inputValueCon)){
            
            if (isNaN(inputValueReal)){
                alert("Informe o valor a ser convertido")
            }else{
                let res = inputValueReal / valor
                document.querySelector("h1").innerHTML = "€ " + res.toFixed(2)
                document.querySelector("h2").innerHTML = "R$ " + inputValueReal.toFixed(2)
            }
        }else{
            
            if (isNaN(inputValueReal)){
                let res = inputValueCon * valor
                document.querySelector("h1").innerHTML = "€ " + inputValueCon.toFixed(2)
                document.querySelector("h2").innerHTML = "R$ " + res.toFixed(2)
            }else{
                alert("Informe apenas um valor por vez")
            }
        }
    }

    return (
        <div className="body" onLoad={valorMoeda}>
            <div className="header">
                <header>
                    <a href="/"><img src={logo} alt="Valor Moeda" /></a>

                    <nav>
                        <ul>
                            <li><Link to="/">Dólar</Link></li>
                            <li><Link to="/euro">Euro</Link></li>
                            <li><Link to="/bitcoin">BitCoin</Link></li>
                        </ul>
                    </nav>
                </header>
            </div>
            
            <div className="page">
                <section>
                    <div className="conversor">
                        <h1>฿ 1.00</h1>
                        <p>=</p>
                        <h2>Carregando...</h2>
                    </div>

                    <div className="conversor-input">
                        <input type="number" id="valueCon" placeholder="Digite o valor em Bitcoin ฿" />
                        <input type="number" id="valueReal" placeholder="Digite o valor em Reais R$" />
                    </div>
                        
                    <div className="conversor-button">
                        <button type="submit" onClick={converter}>CONVERTER</button>
                    </div>
                </section>
                <section className="info">
                    <h2>SOBRE O BITCOIN</h2>
                    <div className="info-moeda ">
                        <div>
                            <h3>O que é o Bitcoin</h3>
                            <p>É uma criptomoeda e sistema de pagamento online baseado em um protocolo de código aberto independente de qualquer autoridade central. O Bitcoin foi apresentada em 2008, na lista de discussão The Cryptography Mailing por um programador ou grupo de programadores sob o pseudônimo Satoshi Nakamoto, é considerada a primeira moeda digital mundial descentralizada.
                            </p>
                        </div>
                    </div>
                    <div className="info-moeda ">
                        <div>
                            <h3>Curiosidades</h3>
                      
                            <p> Satoshi Nakamoto, pseudônimo japonês, inicialmente representava uma pessoa anônima ou um grupo de pessoas que criou o protocolo original do bitcoin, em 2008. Além do próprio bitcoin, nenhuma outra referência a essa identidade foi encontrada. Seu envolvimento no protocolo original parece ter se encerrado em meados de 2010.</p>
                            <br />
                            <p>De 2011 a 2012, a criptomoeda foi usada principalmente em mercados negros como o Silk Road. Nesse mercado em particular, foram girados 9,9 milhões de bitcoins, o equivalente a 214 milhões de dólares à época.</p>
                            <br />
                            <p>Em 2017 a cotação abriu em 998 dólares por bitcoins, fechando em 13 412 dólares por bitcoin em 1 de Janeiro de 2018. A moeda atingiu seu máximo histórico em 17 de Dezembro de 2017, cotada a 19 666 dólares, caindo 70% a 5 920 em 6 de Fevereiro de 2018. No mesmo ano, a Universidade de Cambridge lançou um estudo compreensivo sobre criptomoedas, com dados empíricos do mundo da moeda digital.</p>
                            <br />
                            <p>O primeiro software de carteira se chama Bitcoin Core e foi lançado em 2009 por Satoshi Nakamoto, o possível inventor do Bitcoin. Ele é um software de código-aberto, e originalmente se chamava bitcoind. Às vezes chamado de "cliente Satoshi", também é conhecido como o cliente de referência para implementações, pois serve para definir o protocolo bitcoin atuando como padrão.</p>
                        </div>
                    </div>
                </section>
                <footer>By: Natan.Santos</footer>
            </div>
        </div>
    );
}