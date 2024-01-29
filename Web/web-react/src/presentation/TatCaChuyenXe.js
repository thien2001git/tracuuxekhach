import React from 'react'
import myFetch from '../utils/myFetch'
import listLink from '../utils/ListLink'
import formatDateByPattern from '../utils/formatDateByPattern'
import formatDateByPattern2 from '../utils/formatDateByPattern2'
import ArrowDown from '../images/Arrow down.svg'
import ArrowUp from '../images/Arrow up.svg'

class TatCaChuyenXe extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      sortChieu: true,
    }
  }

  componentDidMount() {
    myFetch(listLink.chuyenXe).then((value) =>
      this.setState({
        chuyenXe: value,
      }),
    )
  }

  sortChieu() {
    if (this.state.chuyenXe != null) {
      let chuyenXe_ = Array.from(this.state.chuyenXe)
      chuyenXe_.sort((a, b) => {
        if (this.state.sortChieu) {
          return a.chieu > b.chieu ? 1 : -1
        } else {
          return a.chieu < b.chieu ? 1 : -1
        }
      })
      var sortChieu_ = !this.state.sortChieu
      this.setState({
        chuyenXe: chuyenXe_,
        sortChieu: sortChieu_,
      })
    }
  }

  render() {
    const ListComponent = ({ items }) => {
      var customPattern = 'DD/MM/YYYY'
      var customPattern2 = 'DD/MM/YYYY HH:mm'
      return (
        <>
          {items?.map((item, index) => (
            <tr key={index}>
              <th>{index}</th>
              <td>{item.chieu}</td>
              <td>{item.giaVe}</td>
              <td>{item.loTrinh.loTrinh}</td>
              <td>
                {formatDateByPattern2(new Date(item.tgDen), customPattern2)}
              </td>
              <td>
                {formatDateByPattern2(new Date(item.tgDi), customPattern2)}
              </td>
              <td>{item.taiXe.fullName}</td>
              <td>{item.taiXe.bangLai}</td>
              <td>
                {formatDateByPattern(
                  new Date(item.taiXe.ngaySinh),
                  customPattern,
                )}
              </td>
              <td>
                {formatDateByPattern(
                  new Date(item.taiXe.ngayLayBang),
                  customPattern,
                )}
              </td>
              <td>{item.taiXe.sdt}</td>
              <td>{item.xe.bienSo}</td>
              <td>{item.xe.hangXe}</td>
              <td>{item.xe.loaiXe}</td>
              <td>{item.xe.soCho}</td>
            </tr>
          ))}
        </>
      )
    }

    var show = <div>Loading</div>
    if (this.state.chuyenXe != null) {
      show = <ListComponent items={this.state.chuyenXe} />
      console.log(this.state.chuyenXe)
    }
    var upOrDown = ArrowDown
    if (this.state.sortChieu) {
      upOrDown = ArrowUp
    }
    return (
      <>
        <div style={{ display: 'flex', justifyContent: 'center' }}>
          <table
            border={1}
            style={{ borderCollapse: 'collapse', width: '80vw' }}
          >
            <tr>
              <th>#</th>
              <th onClick={this.sortChieu.bind(this)}>
                Chiều <img src={upOrDown} />
              </th>
              <th>Giá vé</th>
              <th>Lộ trình</th>
              <th>Xuất phát</th>
              <th>Kết thúc</th>
              <th>Tên tài xế</th>
              <th>Bằng lái</th>
              <th>Ngày sinh</th>
              <th>Ngày lấy bằng</th>
              <th>SDT</th>
              <th>Biển số</th>
              <th>Hãng xe</th>
              <th>Loại xe</th>
              <th>Số chỗ</th>
            </tr>
            {show}
          </table>
        </div>
      </>
    )
  }
}

export default TatCaChuyenXe
