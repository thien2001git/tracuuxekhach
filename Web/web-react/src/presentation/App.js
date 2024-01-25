import '../css/App.css'
import React from 'react'
import SearchIcon from '../images/Search.svg'
import MicIcon from '../images/Mic fill.svg'
import ClockHistory from '../images/Clock history.svg'
import fetchChuyenXe from '../utils/Utils'
import SearchHistory from '../components/SearchHistory'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      isHideResult: 'none',
      textSearch: '',
    }
  }

  handleInput(ev) {
    this.setState({
      isHideResult: 'block',
      textSearch: ev.target.value,
    })
  }

  componentDidMount() {
    this.setState({
      chuyenXe: fetchChuyenXe(),
    })
  }

  render() {
    const handleChildData = (childData) => {
      this.setState({
        textSearch: childData,
      })
    }

    return (
      <>
        <div
          style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            padding: '100px 0px 0px 0px',
          }}
        >
          <h1 style={{ color: '#aaa', fontSize: '3em' }}>
            TRA CỨU XE KHÁCH LIÊN TỈNH
          </h1>
          <div
            style={{
              borderRadius: '20px',
              boxShadow: '5px 5px 10px rgba(0, 0, 0, 0.3)',
            }}
          >
            <div
              style={{
                width: '50vw',
                height: '3em',
                display: 'flex',
                alignItems: 'center',
                padding: '0px 20px',
              }}
            >
              <img src={SearchIcon} title={'SearchIcon'} alt={'SearchIcon'} />
              <input
                type={'text'}
                style={{
                  border: 'none',
                  outline: 'none',
                  width: '100%',
                  height: '90%',
                  margin: '0px 10px',
                }}
                onChange={this.handleInput.bind(this)}
                onClick={this.handleInput.bind(this)}
                value={this.state.textSearch}
              />
              <img src={MicIcon} title={'MicIcon'} alt={'MicIcon'} />
            </div>

            <div style={{ display: this.state.isHideResult }}>
              <SearchHistory
                icon={ClockHistory}
                title={'okok'}
                onDataUpdate={handleChildData}
              />
            </div>
          </div>
        </div>
      </>
    )
  }
}

export default App
