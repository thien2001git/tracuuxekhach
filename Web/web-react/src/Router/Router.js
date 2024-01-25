// src/App.js

import React from 'react';
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import App from "../presentation/App";
import Link from "../components/Link";
import MyLink from "../components/Link";


const About = () => (
    <div>
        <h2>About</h2>
    </div>
);

const Contact = () => (
    <div>
        <h2>Contact</h2>
    </div>
);

const MyRouter = () => {
    return (
        <Router>
            <div>
                <nav style={{display: "flex", justifyContent: "center"}}>
                    <MyLink name={"Trang chủ"} href={"/"}/>
                    <MyLink name={"Tất cả chuyến xe"} href={"/tat-ca-chuyen-xe"}/>
                </nav>

                <hr/>

                <Routes>
                    <Route path="/" element={<App/>}/>
                    <Route path="/tat-ca-chuyen-xe" element={<About/>}/>
                </Routes>
            </div>
        </Router>
    );
};

export default MyRouter;
