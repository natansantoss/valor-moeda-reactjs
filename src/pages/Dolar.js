import React from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

import "./style.css";

import logo from './a.png';

export default function Dolar() {
    
    async function valorMoeda(){  
        try{
            const getMoeda = await axios.get("https://economia.awesomeapi.com.br/all/USD-BRL");
            const valor = parseFloat(getMoeda.data.USD['high']).toFixed(2)
            document.querySelector("h2").innerHTML = "R$ " + valor  
        }catch{
            alert("Erro ao carregar os dados");
        }
    }
    
    async function converter(){   
        const getMoeda = await axios.get("https://economia.awesomeapi.com.br/all/USD-BRL");
        const valor = parseFloat(getMoeda.data.USD['high']).toFixed(2)
        let inputValueCon = parseFloat(document.querySelector("#valueCon").value)
        let inputValueReal = parseFloat(document.querySelector("#valueReal").value)
      
        if (isNaN(inputValueCon)){
            
            if (isNaN(inputValueReal)){
                alert("Informe o valor a ser convertido")
            }else{
                let res = inputValueReal / valor
                document.querySelector("h1").innerHTML = "US$ " + res.toFixed(2)
                document.querySelector("h2").innerHTML = "R$ " + inputValueReal.toFixed(2)
            }
        }else{
            
            if (isNaN(inputValueReal)){
                let res = inputValueCon * valor
                document.querySelector("h1").innerHTML = "US$ " + inputValueCon.toFixed(2)
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
                        <h1>US$ 1.00</h1>
                        <p>=</p>
                        <h2>Carregando...</h2>
                    </div>

                    <div className="conversor-input">
                        <input type="number" id="valueCon" placeholder="Digite o valor em Dólar US$" />
                        <input type="number" id="valueReal" placeholder="Digite o valor em Reais R$" />
                    </div>
                        
                    <div className="conversor-button">
                        <button type="submit" onClick={converter}>CONVERTER</button>
                    </div>
                </section>
                <section className="info">
                    <h2>SOBRE O DÓLAR</h2>
                    <div className="info-moeda ">
                        <div>
                            <h3>O que é o Dólar</h3>
                            <p>O dólar dos Estados Unidos ou dólar estadunidense é a moeda oficial dos Estados Unidos e utilizada no mundo inteiro, tanto em reservas internacionais, como em livre circulação em alguns países. A emissão do Dólar está constantemente sob a supervisão da Reserva Federal dos Estados Unidos. Seu símbolo mais utilizado é o $, como nas moedas em geral. Já o FMI "Fundo Monetário Internacional" se reporta ao dólar como US$, emblema que se tornou popular no restante do mundo. O dólar é a moeda usada hoje em vários países, como Estados Unidos, Canadá, Austrália, Nova Zelândia e Cingapura, entre outros.
                            </p>
                        </div>
                    </div>
                    <div className="info-moeda ">
                        <div>
                            <h3>Curiosidades</h3>
                      
                            <p>Até 1944, quando ocorreu a Conferência de Bretton Woods, era difícil determinar o valor do dólar em comparação ao de outras unidades monetárias, sendo a dificuldade ainda maior com os fortes abalos causados pela Segunda Guerra Mundial. Àquela altura, os EUA já eram a maior potência mundial, por isso tentou-se estabelecer um padrão em que o grama de ouro teria um valor fixo em dólares.</p>
                            <br />
                            <p>Em 1995, mais de 380 bilhões de dólares dos Estados Unidos estavam em circulação, dois terços disso fora dos EUA. Em abril de 2004, aproximadamente 700 bilhões estavam em circulação, com uma estimativa de metade de dois terços dele fora dos EUA. No dia 1 de Janeiro de 2019 o montante de dólares em circulação avizinha os 1,70 trilhões segundo a Reserva Federal.</p>
                            <br />
                            <p>O nome dollar deriva de thaler (em português táler), abreviação de Joachimsthaler, uma moeda de prata cunhada pela primeira vez em 1518, com prata extraída das minas situadas em torno da cidade de Joachimsthal ("Vale de São Joaquim"), atual Jáchymov, na Boêmia.</p>
                            <br />
                            <p>Nas décadas de 1980 e 1990, muitos economistas viam, com grande simpatia, a dolarização da economia brasileira como forma de romper o círculo vicioso da inflação, que, à época, já podia ser considerada hiperinflação. Adotando o dólar como lastro para a moeda nacional, o Brasil poderia se ver livre do tão terrível dragão inflacionário.</p>
                        </div>
                    </div>
                </section>
                <footer>By: Natan.Santos</footer>
            </div>
        </div>
    );
}