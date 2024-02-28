package org.kimoanh.tracuuxekhach.controller

import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.kimoanh.tracuuxekhach.database.model.ChuyenXeModel
import org.kimoanh.tracuuxekhach.database.table.LoTrinh
import org.kimoanh.tracuuxekhach.database.table.TaiXe
import org.kimoanh.tracuuxekhach.database.table.Xe
import org.kimoanh.tracuuxekhach.entity.request.RequestHistory
import org.kimoanh.tracuuxekhach.entity.response.SearchResponse
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class MainControllerTest {
    @Autowired
    lateinit var mainController: MainController

    @Test
    fun contextLoads() {
        Assertions.assertNotNull(mainController)
    }

    @Test
    fun `all should return obj not null`() {
        val result = mainController.all()
        Assertions.assertNotNull(result)
    }

    @Test
    fun `history should return ok`() {
        val result = mainController.history(RequestHistory("okok"))
        Assertions.assertEquals(result, "ok")
    }

    @Test
    fun `getHistory should return not null`() {
        val result = mainController.getHistory()
        Assertions.assertNotNull(result)
    }

    @Test
    fun `search should return not null`() {
        val result = mainController.search(RequestHistory("okok"))
        Assertions.assertNotNull(result)
    }

    @Test
    fun `addList should return true`() {
        val arrayList = ArrayList<SearchResponse>()
        val result = mainController.addList("ababba", "bb", arrayList)
        Assertions.assertTrue(result)
    }

    @Test
    fun `addList should return false`() {
        val arrayList = ArrayList<SearchResponse>()
        val result = mainController.addList("ababba", "bbb", arrayList)
        Assertions.assertFalse(result)
    }

    @Test
    fun `isContain should return true`() {
        val chuyenXeModel =
            ChuyenXeModel(
                0,
                LoTrinh(0, "cascj"),
                TaiXe(0, "caic", "0000", System.currentTimeMillis(), "B9", System.currentTimeMillis()),
                Xe(0, "111", 99, "casc", "casc"),
                System.currentTimeMillis(),
                System.currentTimeMillis(),
                99999,
                "Xuoi",
            )
        val result = chuyenXeModel.isContain("ca")
        Assertions.assertTrue(result)
    }

    @Test
    fun `isContain should return false`() {
        val chuyenXeModel =
            ChuyenXeModel(
                0,
                LoTrinh(0, "cascj"),
                TaiXe(0, "caic", "0000", System.currentTimeMillis(), "B9", System.currentTimeMillis()),
                Xe(0, "111", 99, "casc", "casc"),
                System.currentTimeMillis(),
                System.currentTimeMillis(),
                99999,
                "Xuoi",
            )
        val result = chuyenXeModel.isContain("xxxx")
        Assertions.assertFalse(result)
    }

    @Test
    fun `getSearch should return not null`() {
        val result = mainController.getSearch(RequestHistory("a"))
        Assertions.assertNotNull(result)
    }
}
