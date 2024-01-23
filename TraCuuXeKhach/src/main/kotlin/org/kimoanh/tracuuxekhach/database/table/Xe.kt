package org.kimoanh.tracuuxekhach.database.table

import jakarta.persistence.Entity
import jakarta.persistence.Id


@Entity(name = "xe")
class Xe(
    @Id
    val id: Long,
    val bienSo: String,
    val soCho: Int,
    val hangXe: String,
    val loaiXe: String
) {
}