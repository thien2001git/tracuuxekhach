package org.kimoanh.tracuuxekhach.database.repo

import org.kimoanh.tracuuxekhach.database.table.ChuyenXe
import org.springframework.data.jpa.repository.JpaRepository

interface ChuyenXeRepo : JpaRepository<ChuyenXe, Long>
