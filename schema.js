const config = {
    nodes: {
      heading: {
        render: 'Heading',
        attributes: {
          id: { type: String },
          level: { type: Number }
        }
      }
    },
    tags: {
      callout: {
        render: 'Callout',
        attributes: {
          title: {
            type: String
          }
        }
      }
    },
    variables: {
      name: 'Dr. Mark',
      frontmatter: {
        title: 'Configuration options'
      }
    },
    functions: {
      includes: {
        transform(parameters, config) {
          const [array, value] = Object.values(parameters);
  
          return Array.isArray(array) ? array.includes(value) : false;
        }
      }
    },
    partials: {
      'header.md': Markdoc.parse(`# My header`)
    }
  };
  
  const content = Markdoc.transform(ast, config);

  export default {

  }