import React from "react";
import Routes from "../routes/index";
import { Layout } from "antd";
import Header from "./Header";
import "antd/dist/antd.css";

const { Content, Footer } = Layout;

export default () => (
  <Layout className="layout">
    <Header />
    <Content style={{ padding: "0 50px" }}>
      <div className="site-layout-content" style={{ margin: "100px auto" }}>
        <>{Routes}</>
        </div>
    </Content>
    <Footer style={{ textAlign: "center" }}>Sammy ©2021.</Footer>
  </Layout>
) 