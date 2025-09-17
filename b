business
entertainment
general
health
science
sports 
technology

React Component Lifecycle

The series of events that happen from the mounting of a react component to its unmounting.
Mounting:- Birth of the component
Update:- Growth of the component
Unmounting:- Death of the component

1.componentDidMount()

Called when?: After the component is mounted to the DOM (i.e., rendered for the first time).

Use case: You typically use this method for performing side effects like:

Fetching data from an API.
Setting up subscriptions or event listeners.
Initializing third-party libraries or analytics.

2.componentDidUpdate(prevProps, prevState)

Called when?: After the component has updated and the DOM has been updated with the new state/props. It’s called whenever setState() is called, causing a re-render.

Parameters:

prevProps: The previous props of the component.
prevState: The previous state of the component.
Use case: You use this method when you want to respond to prop or state changes after the render. For example:
Fetching new data if certain props change.
Triggering side effects based on updated state or props.

3.componentWillUnmount()

Called when?: Just before the component is removed from the DOM. This is the last lifecycle method called.
Use case: It’s used for cleanup operations such as:

Removing event listeners or subscriptions.
Cancelling network requests.
Clearing timers or intervals.


{/* <div className="container d-flex justify-content-between">
          <button 
            disabled={this.state.page <= 1} 
            type="button" 
            className="btn btn-dark" 
            onClick={this.handlePrevClick}
          >
            &larr; Previous
          </button>
          <button disabled={this.state.page + 1 > Math.ceil(this.state.totalResults /props.pageSize)}
            type="button" 
            className="btn btn-dark" 
            onClick={this.handleNextClick}
          >
             Next &rarr;
          </button>
        </div> */}