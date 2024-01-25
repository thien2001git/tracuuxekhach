package org.kimoanh.tracuuxekhach.database.repo

import org.kimoanh.tracuuxekhach.database.table.TaiXe
import org.springframework.data.jpa.repository.JpaRepository

interface TaiXeRepo : JpaRepository<TaiXe, Long>
