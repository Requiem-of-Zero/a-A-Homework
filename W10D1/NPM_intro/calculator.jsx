import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    // your code here
    this.state = {
      num1: "",
      num2: "",
      result: 0
    }

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.result = this.result.bind(this);
  }

  // your code here
  result(e) {
    e.preventDefault()
    // const result = e.target.value
    this.setState({ result: num1 + num2 });
    this.setState({ num1: ""});
    this.setState({ num2: ""});
  }

  setNum1(e) {
    const num1 = e.target.value ? +e.target.value : "";
    this.setState({ num1 })
  };

  setNum2(e) {
    const num2 = e.target.value ? +e.target.value : "";
    this.setState({ num2 })
  }

  render() {
    return (
      <div>
        <label htmlFor="{this.setNum1}">Number 1: </label>
        <input onChange={this.setNum1} value={this.state.num1}/>
        <br/>
        <label htmlFor="{this.setNum2}">Number 2: </label>
        <input onChange={this.setNum2} value={this.state.num2}/>
        <br/>
        <button onClick={this.result} value={this.state.result}>Calculate</button>
      </div>
    );
  }
}

export default Calculator;