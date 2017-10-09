import React, { Component, PropTypes } from 'react';

class Chat extends Component {

  render() {

    const { messages, addMessage } = this.props;

    const handleSubmit = (e) => {
      e.preventDefault();
    };

    const handleKeyUp = (e) => {
      if(e.keyCode == 13){
        App.room.speak(e.target.value);
        e.target.value = "";
      };
    };

    return (
      <div>
        <h1>Chat</h1>
      </div>
    );
  }
}

Chat.propTypes = {
  messages: PropTypes.any
};

export default Chat;