from flask import Flask, render_template
import datetime as DT
from datetime import date, timedelta
from datetime import datetime
from flask_sqlalchemy import SQLAlchemy
import sqlalchemy as db
import pandas as pd
import numpy as np
from darksky import forecast
from tabulate import tabulate




app = Flask(__name__)

class Menu_Item:
    def __init__(self, item, price, img_url):
        self.item = item
        self.price = price
        self.img_url = img_url
        

def get_week():
    today = date.today()
    week = [today,
            today + DT.timedelta(days=1),
            today + DT.timedelta(days=2),
            today + DT.timedelta(days=3),
            today + DT.timedelta(days=4),
            today + DT.timedelta(days=5),
            today + DT.timedelta(days=6) ]
    return week

def get_menus(season, weather):
    engine = db.create_engine("mysql+mysqlconnector://root:admin@localhost/recsys?host=localhost?port=3306")
    connection = engine.connect()
    metadata = db.MetaData()
    cities = ['giesing', 'lehel']
    menus = []
    for city in cities:
        menu = db.Table(city+'-'+season+'-'+weather, metadata, autoload=True, autoload_with=engine)
        query = db.select([menu])
        ResultProxy = connection.execute(query)
        ResultSet = ResultProxy.fetchall()
        items = []
        for res in ResultSet:
            items.append(Menu_Item(res['item'], res['price'], res['img_url']))
    
        menus.append(items)
    return menus

def get_AssoPart(season, weather,periode):
    engine = db.create_engine("mysql+mysqlconnector://root:admin@localhost/recsys?host=localhost?port=3306",
                                         convert_unicode=True)
    connection = engine.connect()
    metadata = db.MetaData()
    cities = ['giesing', 'lehel']
    menus = []
    for city in cities:
        menu = db.Table(city+periode+weather+season, metadata, autoload=True, autoload_with=engine)
        query = db.select([menu])
        ResultProxy = connection.execute(query)
        ResultSet = ResultProxy.fetchall()
        items = []
        for res in ResultSet:
            items.append(res)
    
        menus.append(items)
    return menus

def find_AssoEarly_Morning(season,weather,periode,item):
    engine = db.create_engine("mysql+mysqlconnector://root:admin@localhost/recsys?host=localhost?port=3306")
    connection = engine.connect()
    metadata = db.MetaData()
    menu = db.Table('lehel'+periode+weather+season, metadata, autoload=True, autoload_with=engine)
    query = db.select([menu])
    ResultProxy = connection.execute(query)
    Asso = ResultProxy.fetchall()
    Rasso=[]
    for res in Asso:
        Antecedent=res["Antecedent"]
        Consequent=res["Consequent"]
        if(Antecedent.__contains__(item)) or (Consequent.__contains__(item)):
            Rasso.append(res)
    return Rasso

def find_AssoEarly_Morning1(season,weather,periode,item,city):
    engine = db.create_engine("mysql+mysqlconnector://root:admin@localhost/recsys?host=localhost?port=3306")
    connection = engine.connect()
    metadata = db.MetaData()
    menu = db.Table(city+periode+weather+season, metadata, autoload=True, autoload_with=engine)
    query = db.select([menu])
    ResultProxy = connection.execute(query)
    Asso = ResultProxy.fetchall()
    Rasso=[]
    for res in Asso:
        Antecedent=res["Antecedent"]
        Consequent=res["Consequent"]
        if(Antecedent.__contains__(item)) or (Consequent.__contains__(item)):
            Rasso.append(res)
    return Rasso


def get_weather(weekday):
    lehel = 48.139126 , 11.580186

    # 48.139126 lat , 11.580186 longitude
    df=pd.DataFrame() 
    df['Meteo']=""
    df['Meteo']=np.nan
    df['Day']=""
    df['Day']=np.nan
    with forecast('67452ddaccd963de7e7e4a0664a5a414', *lehel) as lehel:
        #print(lehel.daily.summary, end='\n---\n')
        for day in lehel.daily:
            df = df.append({'Day': date.strftime(weekday, '%a'),'Meteo': day.icon}, ignore_index=True)
            day1 = dict(day = date.strftime(weekday, '%a'),
                    sum = day.icon,
                    )
            #print('{day}: {sum} '.format(**day1))
            weekday += timedelta(days=1)
    weather = str(df.Meteo[0])
    if (weather.__contains__("rain") or weather.__contains__("sleet") or weather.__contains__("cloudy") or             weather.__contains__("partly-cloudy-day") or weather.__contains__("partly-cloudy-night")or                               weather.__contains__("cloudy") or weather.__contains__("wind") or weather.__contains__("fog") or                   weather.__contains__("cloudy")):
        weather = "rainy"
    elif (weather == "snow"):
        weather = "snowy"
    else:
        weather = "sunny"
    
    return weather

def get_season(season_id):
    season = ''
    if season_id == 1:
        season = "winter"
    elif season_id == 2:
        season = 'spring'
    elif season_id == 3:
        season = 'summer'
    else:
        season = 'autumn'
    return season


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html', days=get_week())


@app.route('/gallery')
def gallery():
    return render_template('gallery.html', days=get_week())


@app.route('/about')
def about():
    return render_template('about.html', days=get_week())




def get_associationsEarlyMorning(city,season, weather,periode):
    engine = db.create_engine("mysql+mysqlconnector://root:admin@localhost/recsys?host=localhost?port=3306")
    connection = engine.connect()
    metadata = db.MetaData()
    menu = db.Table('lehel-'+season+'-'+weather, metadata, autoload=True, autoload_with=engine)
    query = db.select([menu])
    ResultProxy = connection.execute(query)
    ResultSet = ResultProxy.fetchall()
    Rasso=[]
    for res in ResultSet:
        connection = engine.connect()
        metadata = db.MetaData()
        menu = db.Table(city+periode+weather+season, metadata, autoload=True, autoload_with=engine)
        query = db.select([menu])
        ResultProxy = connection.execute(query)
        Asso = ResultProxy.fetchall()
        for res2 in Asso:
            Antecedent=res2["Antecedent"]
            Consequent=res2["Consequent"]
            x=res['item']
            if(Antecedent.__contains__(x)) or (Consequent.__contains__(x)):
                Rasso.append(res2)
    del Rasso[0:2]
    return Rasso



@app.route('/findItem/<day>/<item>/<city>')
def findItem(day=None,item=None,city=None):
    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus = get_menus(season, weather)
    AssoEarlyMorning=find_AssoEarly_Morning1(season, weather,'early_morning',item,'lehel')
    late_afternoon=find_AssoEarly_Morning1(season, weather,'late_afternoon',item,'lehel')
    early_afternoon=find_AssoEarly_Morning1(season, weather,'early_afternoon',item,'lehel')
    late_morning=find_AssoEarly_Morning1(season, weather,'late_morning',item,'lehel')
    
    return render_template('AssociationsMenuOneItem.html' , day=current_date, days=get_week(), item=item, associationsEarlyMorning=AssoEarlyMorning,late_afternoon=late_afternoon,early_afternoon=early_afternoon,late_morning=late_morning)



@app.route('/blog/<day>')
def blog(day=None):
    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus = get_menus(season, weather)
    AssoEarlyMorning=get_associationsEarlyMorning('lehel',season, weather,'early_morning')
    late_afternoon=get_associationsEarlyMorning('lehel',season, weather,'late_afternoon')
    early_afternoon=get_associationsEarlyMorning('lehel',season, weather,'early_afternoon')
    late_morning=get_associationsEarlyMorning('lehel',season, weather,'late_morning')
    
    return render_template('AssociationsMenu.html' , day=current_date, days=get_week(), menus=menus, associationsEarlyMorning=AssoEarlyMorning,late_afternoon=late_afternoon,early_afternoon=early_afternoon,late_morning=late_morning)

@app.route('/bloggiesing/<day>')
def bloggiesing(day=None):
    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus = get_menus(season, weather)
    AssoEarlyMorning=get_associationsEarlyMorning('giesing',season, weather,'early_morning')
    late_afternoon=get_associationsEarlyMorning('giesing',season, weather,'late_afternoon')
    early_afternoon=get_associationsEarlyMorning('giesing',season, weather,'early_afternoon')
    late_morning=get_associationsEarlyMorning('giesing',season, weather,'late_morning')
    
    return render_template('AssociationsMenu.html' , day=current_date, days=get_week(), menus=menus, associationsEarlyMorning=AssoEarlyMorning,late_afternoon=late_afternoon,early_afternoon=early_afternoon,late_morning=late_morning)


@app.route('/AssoPart1/<day>')
def AssoPart1(day=None):

    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus1 = get_associationsEarlyMorning('lehel',season, weather,'early_morning')
    menus = get_associationsEarlyMorning('giesing',season, weather,'early_morning')
    
    return render_template('AssociationsMenuEA.html' , day=current_date, days=get_week(), menus=menus, x=menus,x1=menus1,part='early_morning')


@app.route('/AssoPart2/<day>')
def AssoPart2(day=None):

    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus1 = get_associationsEarlyMorning('lehel',season, weather,'late_morning')
    menus = get_associationsEarlyMorning('giesing',season, weather,'late_morning')
    
    return render_template('AssociationsMenuEA.html' , day=current_date, days=get_week(), menus=menus, x=menus,x1=menus1,part='late_morning')

@app.route('/AssoPart3/<day>')
def AssoPart3(day=None):
    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus1 = get_associationsEarlyMorning('lehel',season, weather,'early_afternoon')
    menus = get_associationsEarlyMorning('giesing',season, weather,'early_afternoon')
    
    return render_template('AssociationsMenuEA.html' , day=current_date, days=get_week(), menus=menus, x=menus,x1=menus1,part='early_afternoon')

@app.route('/AssoPart4/<day>')
def AssoPart4(day=None):
    
    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus1 = get_associationsEarlyMorning('lehel',season, weather,'late_afternoon')
    menus = get_associationsEarlyMorning('giesing',season, weather,'late_afternoon')
    
    return render_template('AssociationsMenuEA.html' , day=current_date, days=get_week(), menus=menus, x=menus,x1=menus1,part='late_afternoon')

@app.route('/menu/<day>')
def menu(day=None):
    month = int(day.split('-')[1])
    season_id = (month % 12 + 3)//3
    current_date = datetime.strptime(day, '%d-%m-%Y')
    season = get_season(season_id)
    weather = get_weather(current_date)
    menus = get_menus(season, weather)
    return render_template('menu.html', day=current_date, days=get_week(), menus=menus)



@app.route('/contact')
def contact():
    
    return render_template('contact.html', days=get_week())


@app.route('/reservation')
def reservation():
    return render_template('reservation.html', days=get_week())
