return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemaStore = {
                enable = true,
                url = "https://www.schemastore.org/api/json/catalog.json",
              },
              schemas = {
                -- Apply Kubernetes schema to all YAMLs except specific ones
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.28.0-standalone/all.json"] = {
                  "/*.yaml",
                  "/*.yml",
                  "!compose.yaml",
                  "!docker-compose.yaml",
                  "!docker-compose.yml",
                },
              },
              validate = true,
              format = { enable = true },
            },
          },
        },
      },
    },
  },
}
