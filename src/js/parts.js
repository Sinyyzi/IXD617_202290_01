export const makeAnimalMapDescription = ({name,weather,lanscape,img}) => {
    return `<div class="sunset-map-description display-flex">
        <div class="sunset-map-image">
            <img src="${img}" />
        </div>
        <div class="sunset-map-body">
            <h1>${name}</h1>
            <div>${lanscape}</div>
            <div>${weather}</div>
        </div>
    </div>`;
}
