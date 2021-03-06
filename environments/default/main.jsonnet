{

  helloworld: {
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: 'helloworld-deployment',
      labels: {
        app: 'helloworld',
      },
    },
    spec: {
      selector: {
        matchLabels: {
          app: 'helloworld',
        },
      },
      template: {
        metadata: {
          labels: {
            app: 'helloworld',
          },
        },
        spec: {
          containers: [
            {
              name: 'helloworld',
              image: 'nginx:1.14.2',
              ports: [
                { containerPort: 80 },
              ],
            },
          ],
        },
      },
    },

  },
}
