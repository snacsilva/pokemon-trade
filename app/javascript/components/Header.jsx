import React from "react";
import { Layout, Menu } from "antd";
import {Link} from 'react-router-dom';

const { Header } = Layout;

export default () => (
  <Header>
    <div className="logo" />
    <Menu theme="dark" mode="horizontal">
      <Menu.Item key="1">
        <a href="/">
          Home
        </a>
      </Menu.Item>
      <Menu.Item key="2">
        <a href="/pokemons">
          Pokemons
        </a>
      </Menu.Item>
      <Menu.Item key="3">
        <a href="/trades">
          Trades
        </a>
      </Menu.Item>
    </Menu>
  </Header>
);