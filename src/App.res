// This type is based on the getInitialProps return value.
// If you are using getServerSideProps or getStaticProps, you probably
// will never need this
// See https://nextjs.org/docs/advanced-features/custom-app
type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

module Styles = %css(
  let examplesTitle = css`
    font-weight: 700;
  `
)

// We are not using `[@react.component]` since we will never


// use <App/> within our Reason code. It's only used within `pages/_app.js`
let default = (props: props): React.element => {
  let {component, pageProps} = props

  let router = Next.Router.useRouter()

  let content = React.createElement(component, pageProps)

  switch router.route {
  | "/examples" =>
    <MainLayout>
      <h1 className=Styles.examplesTitle> {React.string("Examples Section")} </h1> <div> content </div>
    </MainLayout>
  | _ => <MainLayout> content </MainLayout>
  }
}
