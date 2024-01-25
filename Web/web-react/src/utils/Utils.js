var fetchChuyenXe = async () => {
    try {
        const response = await fetch('http://localhost:8080/all');
        return await response.json()
    } catch (error) {
        console.error('Error fetching data:', error);

    }
};

export default fetchChuyenXe;