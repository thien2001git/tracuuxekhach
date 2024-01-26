package org.kimoanh.tracuuxekhach.controller

import org.kimoanh.tracuuxekhach.database.model.ChuyenXeAdapter
import org.kimoanh.tracuuxekhach.database.model.ChuyenXeModel
import org.kimoanh.tracuuxekhach.database.repo.ChuyenXeRepo
import org.kimoanh.tracuuxekhach.database.repo.LoTrinhRepo
import org.kimoanh.tracuuxekhach.database.repo.TaiXeRepo
import org.kimoanh.tracuuxekhach.database.repo.XeRepo
import org.kimoanh.tracuuxekhach.entity.request.RequestHistory
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
}
