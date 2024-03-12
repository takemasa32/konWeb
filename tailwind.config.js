module.exports = {
  purge: {
    content: ["./pages/**/*.tsx", "./components/**/*.tsx"],
  },
  theme: {
    extend: {
      spacing: {
        '1/1': '100%',
      },
      backgroundImage: (theme) => ({
        check: "url('/icons/check.svg')",
        landscape: "url('/images/landscape/2.jpg')",
      }),
    },
  },
  variants: {
    extend: {
      zIndex: ["hover", "active"],
    },
  },
  plugins: [],
};