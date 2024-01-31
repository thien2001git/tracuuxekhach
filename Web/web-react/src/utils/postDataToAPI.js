import axios from 'axios'

const postDataToAPI = async (postData, api) => {
  try {
    const response = await axios.post(api, postData, {
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json',
      },
    })

    console.log('Response from API:', response.data)
    return response.data
  } catch (error) {
    console.error('Error:', error.message)
  }
}

export default postDataToAPI
