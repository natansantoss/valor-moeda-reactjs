import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

import Dolar from './pages/Dolar.js';
import Euro from './pages/Euro.js';
import Bitcoin from './pages/Bitcoin.js';



export default function Routes (){
    return(
        <BrowserRouter>
            <Switch>
                <Route path="/" exact component={Dolar} />
                <Route path="/euro" exact component={Euro} />
                <Route path="/bitcoin" exact component={Bitcoin} />
            </Switch>
        </BrowserRouter>
    );
}