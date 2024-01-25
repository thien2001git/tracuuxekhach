package org.kimoanh.tracuuxekhach.database.repo

import org.kimoanh.tracuuxekhach.database.table.Xe
import org.springframework.data.jpa.repository.JpaRepository

interface XeRepo : JpaRepository<Xe, Long>
