// One simple action: Increment
enum Actions { Increment }

// The reducer, which takes the previous count and increments it in response
// to an Increment action.
int counterReducer(int state, action) {
  if (action == Actions.Increment) {
    return state + 1;
  }

  return state;
}
