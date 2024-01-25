package org.kimoanh.tracuuxekhach.controller

import org.kimoanh.tracuuxekhach.database.model.ChuyenXeAdapter
import org.kimoanh.tracuuxekhach.database.model.ChuyenXeModel
import org.kimoanh.tracuuxekhach.database.repo.ChuyenXeRepo
import org.kimoanh.tracuuxekhach.database.repo.LoTrinhRepo
import org.kimoanh.tracuuxekhach.database.repo.TaiXeRepo
import org.kimoanh.tracuuxekhach.database.repo.XeRepo
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
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
    @CrossOrigin(origins = arrayOf("http://localhost:3000/"))
    fun all(): List<ChuyenXeModel> {
        val list = ArrayList<ChuyenXeModel>()
        val chuyenXe = chuyenXeRepo.findAll()
        for (i in chuyenXe) {
            list.add(ChuyenXeAdapter(i, loTrinhRepo, taiXeRepo, xeRepo).toModel())
        }
        return list
    }
}