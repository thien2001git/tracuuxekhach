package org.kimoanh.tracuuxekhach.database.repo

import org.kimoanh.tracuuxekhach.database.table.LoTrinh
import org.springframework.data.jpa.repository.JpaRepository

interface LoTrinhRepo:JpaRepository<LoTrinh, Long> {
}