const hex = () => chance.string({length:3, pool:'3456789AB'});
const num = () => chance.natural({min:350,max:600});
const getdate = (d1,d2) => dayjs(new Date(chance.natural({min:d1,max:d2}))).format('YYYY-MM-DD HH:mm:ss');

const weathertype = () => {
    let types = ['clear','sunny','snowy', 'cloudy', 'foggy','rainy','snowy', 'windy', 'sea of clouds'];
    return chance.pickone(types);
}

const landscapetype = () => {
    let types = ['skyscraper','park','beach','cliff','top of mountain','lake','river','desert'];
    return chance.pickone(types);
}

const sunsetname = () => {
    let names = ['Lands End','Venice Beach','Santa Monica','Mori Point','Twin Peak','Waikiki Beach','Salesforce Towel','Napa Valley'];
    return chance.pickone(names);
}

/* Remain same */
const getUsers = () => (new Array(10)).fill(0).map((o,i)=>{
    o = {};
    o.id = i + 1;
    o.name = chance.name();
    o.username = 'user'+o.id;
    o.password = md5('pass');
    o.email = o.username+'@gmail.com';
    o.img = `https://via.placeholder.com/${num()}x${num()}/${hex()}/fff/?text=${o.name}`;
    o.date_create = getdate(Date.parse('2020/01/01'),Date.now());
    return o;
});

const getSunsetSpots = () => (new Array(30)).fill(0).map((o,i)=>{
    o = {};
    o.id = i + 1;
    o.user_id = chance.natural({min:1, max:10});
    o.name = sunsetname();
    o.img = `https://via.placeholder.com/${num()}x${num()}/${hex()}/fff/?text=${o.name}`;
    o.date_create = getdate(Date.parse('2020/01/01'),Date.now());
    o.landscape = landscapetype();
    o.description = chance.sentence();
    return o;
});

const getSunsetTracks = () => (new Array(100)).fill(0).map((o,i)=>{
    o = {};
    o.id = i + 1;
    o.sunset_id = chance.natural({min:1, max:30});
    o.lat = chance.latitude({min:37.67, max:37.80});
    o.lng = chance.longitude({min:-122.50, max:-122.37});
    o.description = chance.sentence();
    o.photo = `https://via.placeholder.com/${num()}x${num()}/${hex()}/fff/?text=PHOTO`;
    o.icon = `https://via.placeholder.com/${num()}x${num()}/${hex()}/fff/?text=ICON`;
    o.date_create = getdate(Date.parse('2020/01/01'),Date.now());
    o.sunset_time = getdate(Date.parse('2020/01/01'),Date.now());
    o.weather = weathertype();
    return o;
});

const exportAsJSON = (type,data) => {
    document.querySelector('.output').innerHTML = `
<h2>${type}</h2>
<pre>
[
${data.map((o)=>`${JSON.stringify(o)}`).join(',\n')}
]
</pre>
`;
}

const exportAsSQL = (type,data) => {
    document.querySelector('.output').innerHTML = `
<h2>${type}</h2>
<pre>
INSERT INTO \`${type}\` (\`${Object.keys(data[0]).join('`, `')}\`) VALUES
${data.map((o)=>`(${JSON.stringify(Object.values(o)).slice(1,-1)})`).join(',\n')}
</pre>
`;
}

window.addEventListener('DOMContentLoaded',()=>{
    document.querySelector('.users-json').addEventListener('click',()=>{ exportAsJSON('Users',getUsers()); });
    document.querySelector('.sunset-spots-json').addEventListener('click',()=>{ exportAsJSON('SunsetSpots',getSunsetSpots()); });
    document.querySelector('.sunset-tracks-json').addEventListener('click',()=>{ exportAsJSON('SunsetTracks',getSunsetTracks()); });
    document.querySelector('.users-sql').addEventListener('click',()=>{ exportAsSQL('track_202290_users',getUsers()); });
    document.querySelector('.sunset-spots-sql').addEventListener('click',()=>{ exportAsSQL('track_202290_sunset_spots',getSunsetSpots()); });
    document.querySelector('.sunset-tracks-sql').addEventListener('click',()=>{ exportAsSQL('track_202290_sunset_tracks',getSunsetTracks()); });
});

window.addEventListener('DOMContentLoaded',()=>{
    document.querySelector('.data').addEventListener('click',()=>{
        exportAsJSON('Users',getUsers());
    })
});