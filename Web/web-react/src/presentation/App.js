import '../css/App.css'
import React from 'react'
import SearchIcon from '../images/Search.svg'
import MicIcon from '../images/Mic fill.svg'
import ClockHistory from '../images/Clock history.svg'
import myFetch from '../utils/myFetch'
import SearchHistory from '../components/SearchHistory'
import postDataToAPI from '../utils/postDataToAPI'
import listLink from '../utils/ListLink'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      isHideResult: 'none',
      textSearch: '',
      listHistory: null,
    }
  }

  handleInput(ev) {
    this.setState({
      isHideResult: 'block',
      textSearch: ev.target.value,
    })
  }

  componentDidMount() {
    myFetch(listLink.chuyenXe).then((value) =>
      this.setState({
        chuyenXe: value,
      }),
    )
    this.fetchHistory()
    myFetch(listLink.getHistory).then((value) => console.log(value))
  }

  fetchHistory() {
    myFetch(listLink.getHistory).then((value) =>
      this.setState({
        listHistory: value,
      }),
    )
  }

  handleKeyDown(event) {
    if (event.key === 'Enter') {
      console.log(this.state.textSearch)
      const postData = {
        data: this.state.textSearch,
      }
      postDataToAPI(JSON.stringify(postData), listLink.postHistory).then(() => {
        this.fetchHistory()
      })
    }
  }

  handleBlur() {
    this.setState({
      isHideResult: 'none',
    })
  }

  render() {
    const handleChildData = (childData) => {
      this.setState({
        textSearch: childData,
      })
    }

    var his = <div>ok</div>
    const ListComponent = ({ items }) => {
      return (
        <>
          {items?.map((item, index) => (
            <SearchHistory
              key={index}
              icon={ClockHistory}
              title={item.data}
              onDataUpdate={handleChildData}
            />
          ))}
        </>
      )
    }
    if (this.state.listHistory != null) {
      var x = []
      for (var i = 0; i < this.state.listHistory.length; i++) {
        x.push(this.state.listHistory[i])
      }
      his = <ListComponent items={x} />
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
                onKeyDown={this.handleKeyDown.bind(this)}
                onBlur={this.handleBlur.bind(this)}
              />
              <img src={MicIcon} title={'MicIcon'} alt={'MicIcon'} />
            </div>

            <div style={{ display: this.state.isHideResult }}>{his}</div>
          </div>
        </div>
      </>
    )
  }
}

export default App
