import React from 'react'

class SearchHistory extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      icon: this.props.icon,
      title: this.props.title,
      onDataUpdate: this.props.onDataUpdate,
    }
  }

  handleClick(title) {
    this.state.onDataUpdate(title)
  }

  render() {
    return (
      <>
        <div
          style={{
            height: '2em',
            display: 'flex',
            alignItems: 'center',
            padding: '10px 20px',
          }}
          onClick={this.handleClick.bind(this, this.state.title)}
        >
          <img alt={'history'} src={this.state.icon} title={'history'} />
          <span style={{ padding: '0px 10px' }}>{this.state.title}</span>
        </div>
      </>
    )
  }
}

export default SearchHistory
