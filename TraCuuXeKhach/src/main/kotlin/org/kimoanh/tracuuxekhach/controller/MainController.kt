package org.kimoanh.tracuuxekhach.controller

import org.kimoanh.tracuuxekhach.database.model.ChuyenXeAdapter
import org.kimoanh.tracuuxekhach.database.model.ChuyenXeModel
import org.kimoanh.tracuuxekhach.database.repo.ChuyenXeRepo
import org.kimoanh.tracuuxekhach.database.repo.LoTrinhRepo
import org.kimoanh.tracuuxekhach.database.repo.TaiXeRepo
import org.kimoanh.tracuuxekhach.database.repo.XeRepo
import org.kimoanh.tracuuxekhach.entity.request.RequestHistory
import org.kimoanh.tracuuxekhach.entity.response.SearchResponse
import org.kimoanh.tracuuxekhach.utils.Utils
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RestController

@RestController
@CrossOrigin(origins = ["http://localhost:3000/"])
class MainController {
    @Autowired
    lateinit var chuyenXeRepo: ChuyenXeRepo

    @Autowired
    lateinit var loTrinhRepo: LoTrinhRepo

    @Autowired
    lateinit var taiXeRepo: TaiXeRepo

    @Autowired
    lateinit var xeRepo: XeRepo

    @GetMapping("/all")
    fun all(): List<ChuyenXeModel> {
        val list = ArrayList<ChuyenXeModel>()
        val chuyenXe = chuyenXeRepo.findAll()
        for (i in chuyenXe) {
            list.add(ChuyenXeAdapter(i, loTrinhRepo, taiXeRepo, xeRepo).toModel())
        }
        return list
    }

    @PostMapping("/history")
    fun history(
        @RequestBody requestHistory: RequestHistory,
    ): String {
        Utils.appendFile("${Utils.longToDateString(System.currentTimeMillis())}    ${requestHistory.data}\n")
        return "ok"
    }

    @GetMapping("/get-history")
    fun getHistory() = Utils.readFile()

    @PostMapping("/search")
    fun search(
        @RequestBody requestHistory: RequestHistory,
    ): List<SearchResponse> {
        val string = Utils.convertToNonAccent(requestHistory.data.lowercase())
        val res = ArrayList<SearchResponse>()
        val his = Utils.readFile().toSet()
        his.forEach {
            if (it.data.contains(string)) {
                res.add(SearchResponse(it.data, true))
            }
        }
        val list = ArrayList<ChuyenXeModel>()
        val chuyenXe = chuyenXeRepo.findAll()
        for (i in chuyenXe) {
            list.add(ChuyenXeAdapter(i, loTrinhRepo, taiXeRepo, xeRepo).toModel())
        }
        list.forEach {
            addList(it.chieu, string, res)
            addList(it.xe.bienSo, string, res)
            addList(it.xe.hangXe, string, res)
            addList(it.xe.loaiXe, string, res)
            addList(it.xe.soCho.toString(), string, res)
            addList(Utils.longToDateString(it.tgDi), string, res)
            addList(Utils.longToDateString(it.tgDen), string, res)
            addList(it.giaVe.toString(), string, res)
            addList(it.loTrinh.loTrinh, string, res)
            addList(it.taiXe.sdt, string, res)
            addList(it.taiXe.bangLai, string, res)
            addList(it.taiXe.fullName, string, res)
            addList(Utils.longToDateString(it.taiXe.ngayLayBang), string, res)
            addList(Utils.longToDateString(it.taiXe.ngaySinh), string, res)
        }
        return res
    }

    fun addList(str: String, re: String, res: ArrayList<SearchResponse>): Boolean {
        if (Utils.convertToNonAccent(str.lowercase()).contains(re)) {
            res.add(SearchResponse(str, false))
            return true
        }
        return false
    }

    fun ChuyenXeModel.isContain(value: String): Boolean {
        val arr = arrayOf(
            loTrinh.loTrinh,
            taiXe.sdt,
            taiXe.bangLai,
            taiXe.fullName,
            Utils.longToDateString(taiXe.ngayLayBang),
            Utils.longToDateString(taiXe.ngaySinh),
            xe.bienSo,
            xe.hangXe,
            xe.loaiXe,
            xe.soCho.toString(),
            Utils.longToDateString(tgDi),
            Utils.longToDateString(tgDen),
            giaVe.toString(),
            chieu
        )
        val v = Utils.convertToNonAccent(value.lowercase())
        for (i in arr) {
            if (Utils.convertToNonAccent(i.lowercase()).contains(v)) {
                return true
            }
        }
        return false
    }

    @PostMapping("/get-search")
    fun getSearch(
        @RequestBody requestHistory: RequestHistory,
    ): List<ChuyenXeModel> {
        val list = ArrayList<ChuyenXeModel>()
        val chuyenXe = chuyenXeRepo.findAll()
        for (i in chuyenXe) {
            list.add(ChuyenXeAdapter(i, loTrinhRepo, taiXeRepo, xeRepo).toModel())
        }
        val res = ArrayList<ChuyenXeModel>()
        list.forEach {
            if (it.isContain(requestHistory.data)) {
                res.add(it)
            }
        }
        return res
    }
}
