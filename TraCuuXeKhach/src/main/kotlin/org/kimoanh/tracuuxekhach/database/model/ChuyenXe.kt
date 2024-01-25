package org.kimoanh.tracuuxekhach.database.model

import org.kimoanh.tracuuxekhach.database.repo.LoTrinhRepo
import org.kimoanh.tracuuxekhach.database.repo.TaiXeRepo
import org.kimoanh.tracuuxekhach.database.repo.XeRepo
import org.kimoanh.tracuuxekhach.database.table.ChuyenXe
import org.kimoanh.tracuuxekhach.database.table.LoTrinh
import org.kimoanh.tracuuxekhach.database.table.TaiXe
import org.kimoanh.tracuuxekhach.database.table.Xe

class ChuyenXeAdapter(
    val chuyenXe: ChuyenXe,
    val loTrinhRepo: LoTrinhRepo,
    val taiXeRepo: TaiXeRepo,
    val xeRepo: XeRepo,
) {
    fun getId() = chuyenXe.id

    fun getLoTrinh() = loTrinhRepo.getReferenceById(chuyenXe.loTrinh)

    fun getTaiXe() = taiXeRepo.getReferenceById(chuyenXe.taiXe)

    fun getXe() = xeRepo.getReferenceById(chuyenXe.xe)

    fun getThoiGianDi() = chuyenXe.thoiGianDi

    fun getThoiGianDen() = chuyenXe.thoiGianDen

    fun getChieu() =
        if (chuyenXe.chieu) {
            "Xuôi"
        } else {
            "Ngược"
        }

    fun toModel() =
        ChuyenXeModel(
            getId(),
            getLoTrinh(),
            getTaiXe(),
            getXe(),
            getThoiGianDi(),
            getThoiGianDen(),
            chuyenXe.giaVe,
            getChieu(),
        )
}

class ChuyenXeModel(
    val id: Long,
    val loTrinh: LoTrinh,
    val taiXe: TaiXe,
    val xe: Xe,
    val tgDi: Long,
    val tgDen: Long,
    val giaVe: Long,
    val chieu: String,
)
