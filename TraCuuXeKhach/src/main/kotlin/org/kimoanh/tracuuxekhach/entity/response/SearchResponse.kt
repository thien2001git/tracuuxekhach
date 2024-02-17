package org.kimoanh.tracuuxekhach.entity.response

class SearchResponse(val data: String, val isHistory: Boolean) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as SearchResponse

        return data == other.data
    }

    override fun hashCode(): Int {
        return data.hashCode()
    }
}