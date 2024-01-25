package org.kimoanh.tracuuxekhach.database.table

import jakarta.persistence.Entity
import jakarta.persistence.Id

@Entity
class ChuyenXe(
    @Id
    val id: Long,
    val thoiGianDi: Long,
    val thoiGianDen: Long,
    val loTrinh: Long,
    val taiXe: Long,
    val xe: Long,
    val giaVe: Long,
    val chieu: Boolean,
)
