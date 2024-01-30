import React from 'react'
import myFetch from '../utils/myFetch'
import listLink from '../utils/ListLink'
import formatDateByPattern from '../utils/formatDateByPattern'
import formatDateByPattern2 from '../utils/formatDateByPattern2'
import ArrowDown from '../images/Arrow down.svg'
import ArrowUp from '../images/Arrow up.svg'
import map from '../utils/myMap'
import listCol from '../utils/listCol'
import listColName from '../utils/listColName'

class TatCaChuyenXe extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      sort: map,
    }
  }

  componentDidMount() {
    myFetch(listLink.chuyenXe).then((value) =>
      this.setState({
        chuyenXe: value,
      }),
    )
  }

  sortCol(colName) {
    if (this.state.chuyenXe != null) {
      let chuyenXe_ = Array.from(this.state.chuyenXe)
      chuyenXe_.sort((a, b) => {
        var aa = null
        var bb = null
        switch (colName) {
          case 'chieu':
            aa = a.chieu
            bb = b.chieu
            break
          case 'giaVe':
            aa = a.giaVe
            bb = b.giaVe
            break
          case 'loTrinh':
            aa = a.loTrinh.loTrinh
            bb = b.loTrinh.loTrinh
            break
          case 'xuatPhat':
            aa = a.tgDi
            bb = b.tgDi
            break
          case 'ketThuc':
            aa = a.tgDen
            bb = b.tgDen
            break
          case 'tenTaiXe':
            aa = a.taiXe.fullName
            bb = b.taiXe.fullName
            break
          case 'bangLai':
            aa = a.taiXe.bangLai
            bb = b.taiXe.bangLai
            break
          case 'ngaySinh':
            aa = a.taiXe.ngaySinh
            bb = b.taiXe.ngaySinh
            break
          case 'ngayLayBang':
            aa = a.taiXe.ngayLayBang
            bb = b.taiXe.ngayLayBang
            break
          case 'sdt':
            aa = a.taiXe.sdt
            bb = b.taiXe.sdt
            break
          case 'bienSo':
            aa = a.xe.bienSo
            bb = b.xe.bienSo
            break
          case 'hangXe':
            aa = a.xe.hangXe
            bb = b.xe.hangXe
            break
          case 'loaiXe':
            aa = a.xe.loaiXe
            bb = b.xe.loaiXe
            break
          case 'soCho':
            aa = a.xe.soCho
            bb = b.xe.soCho
            break
        }

        if (this.state.sort[colName]) {
          return aa > bb ? 1 : -1
        } else {
          return aa < bb ? 1 : -1
        }
      })
      var sort_ = this.state.sort
      sort_[colName] = !sort_[colName]
      this.setState({
        chuyenXe: chuyenXe_,
        sort: sort_,
      })
    }
  }

  render() {
    const ListComponent = ({ items }) => {
      var customPattern = 'DD/MM/YYYY'
      var customPattern2 = 'DD/MM/YYYY HH:mm'
      var center = {
        textAlign: 'center',
      }
      return (
        <>
          {items?.map((item, index) => (
            <tr
              key={index}
              style={
                index % 2 == 0
                  ? { backgroundColor: 'white' }
                  : { backgroundColor: '#d1fdff' }
              }
            >
              <td style={{ textAlign: 'center', fontWeight: 'bold' }}>
                <span>{index}</span>
              </td>
              <td style={center}>{item.chieu}</td>
              <td style={center}>{item.giaVe}</td>
              <td style={center}>{item.loTrinh.loTrinh}</td>
              <td style={center}>
                {formatDateByPattern2(new Date(item.tgDi), customPattern2)}
              </td>
              <td style={center}>
                {formatDateByPattern2(new Date(item.tgDen), customPattern2)}
              </td>
              <td style={center}>{item.taiXe.fullName}</td>
              <td style={center}>
                <span>{item.taiXe.bangLai}</span>
              </td>
              <td style={center}>
                {formatDateByPattern(
                  new Date(item.taiXe.ngaySinh),
                  customPattern,
                )}
              </td>
              <td style={center}>
                {formatDateByPattern(
                  new Date(item.taiXe.ngayLayBang),
                  customPattern,
                )}
              </td>
              <td style={center}>{item.taiXe.sdt}</td>
              <td style={center}>{item.xe.bienSo}</td>
              <td style={center}>{item.xe.hangXe}</td>
              <td style={center}>{item.xe.loaiXe}</td>
              <td style={center}>{item.xe.soCho}</td>
            </tr>
          ))}
        </>
      )
    }

    const MyListCol = ({ items }) => {
      return (
        <>
          {items?.map((value, index) => (
            <th key={index} onClick={this.sortCol.bind(this, value)}>
              {listColName[value]} <img src={upOrDown[value]} />
            </th>
          ))}
        </>
      )
    }

    var show = <div>Loading</div>
    if (this.state.chuyenXe != null) {
      show = <ListComponent items={this.state.chuyenXe} />
      console.log(this.state.chuyenXe)
    }
    var upOrDown = {}
    listCol.forEach((value, index, array) => {
      upOrDown[value] = ArrowDown
      if (this.state.sort[value]) {
        upOrDown[value] = ArrowUp
      }
    })
    return (
      <>
        <div style={{ display: 'flex', justifyContent: 'center' }}>
          <table
            border={1}
            style={{ borderCollapse: 'collapse', width: '80vw' }}
          >
            <tr>
              <th>#</th>
              <MyListCol items={listCol} />
            </tr>
            {show}
          </table>
        </div>
      </>
    )
  }
}

export default TatCaChuyenXe
