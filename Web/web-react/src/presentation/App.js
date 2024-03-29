import '../css/App.css'
import React from 'react'
import SearchIcon from '../images/Search.svg'
import ClockHistory from '../images/Clock history.svg'
import myFetch from '../utils/myFetch'
import SearchHistory from '../components/SearchHistory'
import postDataToAPI from '../utils/postDataToAPI'
import listLink from '../utils/ListLink'
import { useNavigate } from 'react-router-dom'
import mapNhaXe from '../utils/mapNhaXe'

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

    const postData = {
      data: this.state.textSearch,
    }
    postDataToAPI(JSON.stringify(postData), listLink.postSearch).then(
      (value) => {
        this.setState({
          recommend: value,
        })
      },
    )
  }

  componentDidMount() {
    this.fetchHistory()
    myFetch(listLink.getHistory).then((value) => console.log('history'))
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
      console.log('search enter')
      const postData = {
        data: this.state.textSearch,
      }
      postDataToAPI(JSON.stringify(postData), listLink.postHistory).then(() => {
        this.fetchHistory()
      })
      this.props.history(`tim-kiem/${this.state.textSearch}`)
    }
  }

  // handleNavigation = () => {
  //   const navigate = useNavigate()
  //   navigate(`tim-kiem/${this.state.textSearch}`)
  // }

  render() {
    const handleChildData = (childData) => {
      console.log(childData)
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
              icon={item.icon}
              title={item.data}
              onDataUpdate={handleChildData}
            />
          ))}
        </>
      )
    }
    if (this.state.recommend != null) {
      var x = []
      for (var i = 0; i < this.state.recommend.length; i++) {
        var ic =
          this.state.recommend[i].isHistory === true ? ClockHistory : SearchIcon
        var e = {
          data: this.state.recommend[i].data,
          icon: ic,
        }
        x.push(e)
      }
      his = <ListComponent items={x} />
    }

    var listNhaXe = []
    for (var key in mapNhaXe) {
      listNhaXe.push(mapNhaXe[key])
    }

    const ListNhaxe = ({ items }) => {
      return (
        <>
          <div style={{ display: 'flex', justifyContent: 'space-around' }}>
            {items?.map((item, index) => (
              <img
                style={{
                  width: '64px',
                  height: '64px',
                  margin: '0px 40px',
                }}
                key={index}
                src={item}
              />
            ))}
          </div>
        </>
      )
    }

    return (
      <>
        <ListNhaxe items={listNhaXe} />
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
                // onBlur={this.handleBlur.bind(this)}
              />
            </div>

            <div style={{ display: this.state.isHideResult }}>{his}</div>
          </div>
        </div>
      </>
    )
  }
}

function App2() {
  const history = useNavigate()
  return <App history={history} />
}

export default App2
