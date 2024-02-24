package org.kimoanh.tracuuxekhach.utils

import org.kimoanh.tracuuxekhach.entity.request.RequestHistory
import org.kimoanh.tracuuxekhach.utils.Constant.filePath
import java.io.BufferedWriter
import java.io.File
import java.io.FileWriter
import java.text.SimpleDateFormat
import java.util.Date

object Utils {
    fun appendFile(contentToAppend: String): Result<Unit> {
        return kotlin.runCatching {
            val fileWriter = FileWriter(filePath, true)
            val bufferedWriter = BufferedWriter(fileWriter)

            bufferedWriter.write(contentToAppend)

            bufferedWriter.close()
        }
    }

    fun longToDateString(timestamp: Long): String {
        return kotlin.runCatching {
            val dateFormat = SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
            val date = Date(timestamp)
            dateFormat.format(date)
        }.getOrThrow()
    }

    fun readFile(): List<RequestHistory> {
        return kotlin.runCatching {
            val list = ArrayList<RequestHistory>()
            val lines: List<String> = File(filePath).readLines()

            // Print each line
            lines.forEach {
                list.add(RequestHistory(it.substring(23)))
            }
            list.reversed()
        }.getOrThrow()
    }

    fun convertToNonAccent(str: String): String {
        return kotlin.runCatching {
            var result = str
            result = result.replace("[áàảãạăắằẳẵặâấầẩẫậ]".toRegex(), "a")
            result = result.replace("đ".toRegex(), "d")
            result = result.replace("[éèẻẽẹêếềểễệ]".toRegex(), "e")
            result = result.replace("[íìỉĩị]".toRegex(), "i")
            result = result.replace("[óòỏõọôốồổỗộơớờởỡợ]".toRegex(), "o")
            result = result.replace("[úùủũụưứừửữự]".toRegex(), "u")
            result = result.replace("[ýỳỷỹỵ]".toRegex(), "y")
            result
        }.getOrThrow()
    }
}
