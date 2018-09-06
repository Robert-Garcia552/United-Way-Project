import React, { Component } from 'react';

class ErrorBoundary extends Component   {
    constructor(props) {
        super(props);
        this.state = {hasErrors: false}
    }
   

    componentDidCatch(error)  {
        this.setState({hasErrors: true});
    }
    render()    {
     if(this.state.hasErrors)   {
        return(
            <div>
                {alert("Please refresh the page, something went wrong.")}
                <span></span>
            </div>
        ) 
     }
        return this.props.children
    }
}

export default ErrorBoundary;