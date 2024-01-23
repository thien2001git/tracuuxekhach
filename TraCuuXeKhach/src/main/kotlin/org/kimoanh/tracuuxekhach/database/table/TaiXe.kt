package org.kimoanh.tracuuxekhach.database.table

import jakarta.persistence.Entity
import jakarta.persistence.Id


@Entity(name = "TaiXe")
class TaiXe(
    @Id
    val id: Long,
    val fullName: String,
    val sdt: String,
    val ngaySinh: Long,
    val bangLai: String,
    val ngayLayBang: Long
) {
}