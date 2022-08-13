-- targets can be one of ewasm, generic, sabre, solana, substrate
return {
  cmd = { "solang", "--language-server", "--target", "ewasm", "--importpath", "node_modules/" },
}
