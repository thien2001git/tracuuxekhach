package org.kimoanh.tracuuxekhach.database.table

import jakarta.persistence.Entity
import jakarta.persistence.Id

@Entity
class LoTrinh(
    @Id
    val id: Long,
    val loTrinh: String,
)
