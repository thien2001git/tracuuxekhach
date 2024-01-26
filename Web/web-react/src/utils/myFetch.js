var myFetch = async (api) => {
  try {
    const response = await fetch(api)
    return await response.json()
  } catch (error) {
    console.error('Error fetching data:', error)
  }
}

export default myFetch
