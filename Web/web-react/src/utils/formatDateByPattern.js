function formatDateByPattern(date, pattern) {
  const year = date.getFullYear()
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const day = String(date.getDate()).padStart(2, '0')

  const formattedDate = pattern
    .replace('DD', day)
    .replace('MM', month)
    .replace('YYYY', year)

  // .replace('HH', hours)
  // .replace('mm', minutes)
  // .replace('ss', seconds)

  return formattedDate
}

export default formatDateByPattern
