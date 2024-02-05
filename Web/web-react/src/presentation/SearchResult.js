import React from 'react'
import { useParams } from 'react-router-dom'

class SearchResult1 extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      myKey: this.props.myKey,
    }
  }
  render() {
    console.log(this.state.myKey)
    return (
      <>
        <h1>okok {this.state.myKey}</h1>
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
