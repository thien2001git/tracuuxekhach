package org.kimoanh.tracuuxekhach.utils

import org.kimoanh.tracuuxekhach.entity.request.RequestHistory
import java.io.BufferedWriter
import java.io.File
import java.io.FileWriter
import java.io.IOException
import java.text.SimpleDateFormat
import java.util.Date

object Utils {
    val filePath = "history/.history"

    fun appendFile(contentToAppend: String) {
        try {
            val fileWriter = FileWriter(filePath, true)
            val bufferedWriter = BufferedWriter(fileWriter)

            bufferedWriter.write(contentToAppend)

            bufferedWriter.close()
        } catch (e: IOException) {
            e.printStackTrace()
        }
    }

    fun longToDateString(timestamp: Long): String {
        // Create a SimpleDateFormat instance with the desired date format
        val dateFormat = SimpleDateFormat("yyyy-MM-dd HH:mm:ss")

        // Convert the timestamp to a Date object
        val date = Date(timestamp)

        // Format the Date object to a string
        return dateFormat.format(date)
    }

    fun readFile(): List<RequestHistory> {
        val list = ArrayList<RequestHistory>()
        val lines: List<String> = File(filePath).readLines()

        // Print each line
        lines.forEach {
            list.add(RequestHistory(it.substring(23)))
        }
        return list.reversed()
    }

    fun convertToNonAccent(str: String): String {
        var result = str
        result = result.replace("/á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/g".toRegex(), "a")
        result = result.replace("/đ/g".toRegex(), "d")
        result = result.replace("/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/g".toRegex(), "e")
        result = result.replace("/í|ì|ỉ|ĩ|ị/g".toRegex(), "i")
        result = result.replace("/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/g".toRegex(), "o")
        result = result.replace("/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/g".toRegex(), "u")
        result = result.replace("/ý|ỳ|ỷ|ỹ|ỵ/g".toRegex(), "y")
        return result
    }
}
