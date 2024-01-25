package org.kimoanh.tracuuxekhach

import org.junit.jupiter.api.Test
import org.springframework.boot.test.context.SpringBootTest
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

@SpringBootTest
class TraCuuXeKhachApplicationTests {
    fun longToDateString(timestamp: Long): String {
        val date = Date(timestamp)
        val sdf = SimpleDateFormat("yyyy-MM-dd", Locale.getDefault())
        return sdf.format(date)
    }

    @Test
    fun contextLoads() {
        println(longToDateString(565635600000))
    }
}
