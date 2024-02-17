import React from 'react'
import { useParams } from 'react-router-dom'
import TatCaChuyenXe from './TatCaChuyenXe'
import listLink from '../utils/ListLink'

class SearchResult1 extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      myKey: this.props.myKey,
    }
  }

  componentDidMount() {}

  render() {
    console.log(this.state.myKey)
    const key = decodeURIComponent(this.state.myKey)
    return (
      <>
        <div>
          <div
            style={{
              display: 'flex',
              justifyContent: 'center',
              margin: '0px 100px',
              fontSize: 'larger',
            }}
          >
            Kết quả tìm kiếm cho: <b>{key}</b>
          </div>
          <TatCaChuyenXe link={listLink.postSearchRespone} postValue={key} />
        </div>
      </>
    )
  }
}

const SearchResult = () => {
  const { id } = useParams()
  const currentLink = window.location.href.substring(
    'http://localhost:3000/tim-kiem/'.length,
  )
  return <SearchResult1 myKey={currentLink} />
}
export default SearchResult
