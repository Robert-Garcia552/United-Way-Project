import React, { Component } from 'react';

class ErrorBoundary extends Component   {
    constructor(props) {
        super(props);
        this.state = {hasErrors: false}
    }
   

    componentDidCatch(error)  {
        this.setState = {hasErrors: true}
    }
    render()    {
     if(this.state.hasErrors){
            alert("Please refresh the page, something went wrong.")
        }
        return(
            this.props.children
            {alert("Please refresh the page, something went wrong.")}
    )

}
}

export default ErrorBoundary;