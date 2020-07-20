import streamlit as st
import pandas as pd
import numpy as np
import pydeck as pdk
import plotly.express as px
import io
import json
from ip2geotools.databases.noncommercial import DbIpCity

HACK_ZENVIA = ("hackZenvia.csv")


def load_csv(nrows, data_url):
    original_data = pd.read_csv(data_url, nrows=nrows)
    data = original_data.copy()

    return data 



zenvia_csv = load_csv(100, HACK_ZENVIA)

st.title("Mapa para indicar a qualidade da região para a venda " + 
" de produtos de determinada categoria.")
st.markdown("No gráfico abaixo é apresentado quais regiões " + 
" possuem mais pessoas interessadas em comprar tênis(AZUL) e "+ 
" quais regiões possuem menos pessoas interessadas comprar tênis(VERMELHO)")
st.markdown("O objetivo desse mapa é ajudar pequenos e " + 
"médios empresários a fazer um marketing mais eficiente " + 
"e mais barato baseado em quais regiões forem melhor " +
"para anunciar o seu produto.")

point = [
        zenvia_csv['latitude'][0], zenvia_csv['longitude'][0]
]
st.write(pdk.Deck(
    map_style="mapbox://styles/mapbox/light-v9",
    initial_view_state = {
        "latitude": point[0],
        "longitude": point[1],
        "zoom": 11,
        "pitch": 50,
        
    },
    layers = [
        pdk.Layer(
            "ColumnLayer",
            data=zenvia_csv,
            get_position=["longitude", "latitude"],
            auto_highlight=True,
            radius = 100,
            extruded=True,
            pickable=True,
            get_elevation='500*lead_score',
            get_fill_color=["(5-lead_score)*(10-lead_score)*10", 
                            "(3-lead_score)*(10-lead_score)*(-1)*10", 
                            "(3-lead_score)*(5-lead_score)*10"],
        ),
    ]
))