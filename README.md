### Queries

#### All links

```json
query {
  allLinks {
    id,
    description,
    url
  }
}
```

#### Get a link

```json
query {
  getLink(id: 1) {
    url,
    description
  }
}
```

### Mutations

#### Create link

```json
mutation {
  createLink(
    url: "site.com",
    description: "Random"
  ) {
    id,
    description
  }
}
```

#### Delete link

```json
mutation {
  deleteLink(id: 1) {
    id, description, url
  }
}
```

#### Update link

```json
mutation {
  updateLink(id: 5, params: {url: "full.com.br", description: "full change"}) {
    id, url, description
  }
}
```
