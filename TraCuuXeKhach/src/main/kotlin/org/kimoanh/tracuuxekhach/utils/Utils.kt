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
}
