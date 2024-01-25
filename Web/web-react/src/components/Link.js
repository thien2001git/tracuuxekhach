import React from "react";

class MyLink extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            name: this.props.name,
            href: this.props.href
        }
    }

    render() {
        return (
            <>
                <a style={{margin: "10px 20px", fontSize: "20px", color: "#555", textDecoration: "none"}}
                   href={this.state.href}>{this.state.name}</a>
            </>
        )
    }
}

export default MyLink;