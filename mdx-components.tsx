import type { MDXComponents } from "mdx/types";
import { Create } from "@jinjatdata/core";
import { Children, Component, ReactNode } from "react";
import React from "react";

// This file allows you to provide custom React components
// to be used in MDX files. You can import and use any
// React component you want, including inline styles,
// components from other libraries, and more.

const Control = ({children}) => {
  console.log(children);
  return <div style={{ flex: 1 }}></div>;
}

const customComponent: MDXComponents = {
  h1: ({ children }) => <h1 style={{ fontSize: '100px' }}>{children}</h1>,

  // Create: ({children}) => {
  //   const result = Children.toArray(children).map((child) => {
  //     if(child instanceof Control) {
  //       child
  //     }
  //     if(typeof child.ref != "string") {
  //
  //     }
  //     debugger
  //   });
  //
  //   return <div style={{ flex: 1 }}></div>;
  // },
  Edit: (args) => {
    console.log(args);
    return <div style={{ flex: 1 }}></div>;
  },


  Form: ({children}) => {
    console.log(children);
    return <div style={{ flex: 1 }}></div>;
  },
  Control: Control,
  Rule: ({children}) => {
    console.log(children);
    return <div style={{ flex: 1 }}></div>;
  },


  List: (args) => <div style={{ flex: 1 }}></div>,
  Column: (args) => <div style={{ flex: 1 }}></div>,
};

export function useMDXComponents(components: MDXComponents): MDXComponents {
  return { ...customComponent, ...components };
}

declare global {
  type MDXProvidedComponents = typeof customComponent;
}
