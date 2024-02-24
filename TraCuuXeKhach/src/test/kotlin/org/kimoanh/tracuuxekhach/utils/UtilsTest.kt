package org.kimoanh.tracuuxekhach.utils

import io.mockk.every
import io.mockk.mockkObject
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import java.io.File
import java.nio.file.Files

class UtilsTest {
    @TempDir
    lateinit var file: File

    @Test
    fun `appendFile should return success`() {
        mockkObject(Constant)
        val testFile = File(file.absolutePath.toString(), ".test")
        every { Constant.filePath } returns testFile.absolutePath.toString()

        val result = Utils.appendFile("abc")
        Assertions.assertTrue(result.isSuccess)
    }

    @Test
    fun `appendFile should return failure`() {
        mockkObject(Constant)
        every { Constant.filePath } throws Exception()

        val result = Utils.appendFile("abc")
        Assertions.assertTrue(result.isFailure)
    }

    @Test
    fun `longToDateString should return success`() {
        val timeStamp = 1708795177824

        val result = Utils.longToDateString(timeStamp)
        Assertions.assertEquals(result, "2024-02-25 00:19:37")
    }

    @Test
    fun `readFile should return success`() {
        mockkObject(Constant)
        val testFile = File(file.absolutePath.toString(), ".test")
        Files.write(testFile.toPath(), "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa".toByteArray())
        every { Constant.filePath } returns testFile.absolutePath.toString()

        val result = Utils.readFile()

        Assertions.assertEquals("aaaaaa", result[0].data)
    }

    @Test
    fun `readFile should throw Exception`() {
        mockkObject(Constant)
        val testFile = File(file.absolutePath.toString(), ".test")
        Files.write(testFile.toPath(), "aaa".toByteArray())
        every { Constant.filePath } returns testFile.absolutePath.toString()

        Assertions.assertThrows(IndexOutOfBoundsException::class.java) {
            Utils.readFile()
        }
    }

    @Test
    fun `convertToNonAccent should return success`() {
        val str = "á ậ ồ ũ ữ đ ĩ ỵ ê é"
        val result = Utils.convertToNonAccent(str)
        Assertions.assertEquals(result, "a a o u u d i y e e")
    }
}
