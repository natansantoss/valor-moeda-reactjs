import React from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

import "./style.css";

import logo from './a.png';

export default function Dolar() {
    
    async function valorMoeda(){  
        try{
            const getMoeda = await axios.get("https://economia.awesomeapi.com.br/all/EUR-BRL");
            const valor = parseFloat(getMoeda.data.EUR['high']).toFixed(2)
            document.querySelector("h2").innerHTML = "R$ " + valor  
        }catch{
            alert("Erro ao carregar os dados");
        }
    }
    
    async function converter(){   
        const getMoeda = await axios.get("https://economia.awesomeapi.com.br/all/EUR-BRL");
        const valor = parseFloat(getMoeda.data.EUR['high']).toFixed(2)
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
                        <h1>€ 1.00</h1>
                        <p>=</p>
                        <h2>Carregando...</h2>
                    </div>

                    <div className="conversor-input">
                        <input type="number" id="valueCon" placeholder="Digite o valor em Euro €" />
                        <input type="number" id="valueReal" placeholder="Digite o valor em Reais R$" />
                    </div>
                        
                    <div className="conversor-button">
                        <button type="submit" onClick={converter}>CONVERTER</button>
                    </div>
                </section>
                <section className="info">
                    <h2>SOBRE O EURO</h2>
                    <div className="info-moeda ">
                        <div>
                            <h3>O que é o Euro</h3>
                            <p>Euro é a moeda oficial das instituições da União Europeia e a moeda comum de 19 países que compõe a Zona Euro. De acordo com os padrões ISO, o código da moeda é EUR ou €. A circulação virtual do euro teve início em 1 de janeiro de 1999 e as primeiras moedas e cédulas foram introduzidas em 2002. É uma das moedas mais líquidas de todo o mundo e é gerenciada pelo Sistema Europeu de Bancos Centrais (ESCB), comandado pelo Banco Central Europeu.
                            </p>
                        </div>
                    </div>
                    <div className="info-moeda ">
                        <div>
                            <h3>Curiosidades</h3>
                      
                            <p> O euro é a segunda maior moeda de reserva e a segunda moeda mais transaccionada no mundo a seguir ao dólar dos Estados Unidos. Com mais de 1,2 trilhão de euros em circulação em 2018, o euro tem o maior valor combinado de notas e moedas em circulação no mundo, tendo ultrapassado o dólar norte-americano.</p>
                            <br />
                            <p>A ideia do estabelecimento da moeda única na CEE nasceu já na década de 70. Teve como principais defensores os Economistas Fred Arditti, Neil Dowling, Wim Duisenberg, Robert Mundell, Tommaso Padoa-Schioppa e Robert Tollison. No entanto, só pelo Tratado de Maastricht, de 1992 esta ideia passou da teoria para o Direito.</p>
                            <br />
                            <p>O primeiro nome para o sistema de conversão entre as moedas que se uniriam foi o ECU (European Currency Unit em Inglês). O nome de Euro é atribuído ao Belga German Pirloit que assim o sugeriu a Jacques Santer em 1995.</p>
                            <br />
                            <p>Em finais de 2011, foi enunciado em vários parlamentos europeus, mais notavelmente no Parlamento da França e no próprio Parlamento Europeu, a possibilidade de extinção do euro como moeda. Foi referido por François Fillon, primeiro-ministro francês, que o fim da moeda única seria catastrófico para o continente europeu, ao desvalorizar em 25% as economias mais fortes e em 50% as mais frágeis. Várias empresas, como a Autoeuropa, que tem um peso importante na economia portuguesa, avaliam já o cenário próximo de fim do Euro.</p>
                        </div>
                    </div>
                </section>
                <footer>By: Natan.Santos</footer>
            </div>
        </div>
    );
}