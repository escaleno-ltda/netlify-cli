# netlify-cli
Docker image with alpine and netlify-cli

## Example with gitlab-ci

```yml
production:
  stage: deploy
  image: escaleno/netlify-cli:2.58.0
  script:
    # Build app
    - npm run build
    # Deploy app
    - netlify deploy --prod
  only:
    - master
```
