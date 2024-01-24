import './css/App.css';
import React from "react";
import SearchIcon from "./images/Search.svg"
import MicIcon from "./images/Mic fill.svg"

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            isHideResult: "inherit"
        }
    }

    render() {
        return (
            <>

                <div
                    style={{height: "100vh", display: "flex", flexDirection: "column", alignItems: "center", justifyContent: "center"}}>
                    <h1 style={{color:"#aaa"}}>TRA CỨU XE KHÁCH LIÊN TỈNH</h1>
                    <div style={{
                        borderRadius: "20px",
                        boxShadow: "5px 5px 10px rgba(0, 0, 0, 0.3)"
                    }}>
                        <div style={{
                            width: "50vw",
                            height: "3em",
                            display: "flex",
                            alignItems: "center",
                            padding: "0px 20px"
                        }}>
                            <img src={SearchIcon}/>
                            <input type={"text"}
                                   style={{
                                       border: "none",
                                       outline: "none",
                                       width: "100%",
                                       height: "90%",
                                       margin: "0px 10px"
                                   }}/>
                            <img src={MicIcon}/>
                            <hr style={{display: this.state.isHideResult}}/>

                        </div>
                    </div>

                </div>
            </>
        )
    }
}

export default App;
