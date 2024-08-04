const std = @import("std");
const user = @import("models/user.zig");
const User = user.User;
const alsoAdd = @import("add.zig").alsoAdd;

// This code wont compile if `main` isnt public
pub fn main() void {
    const newUser = User{
        .power = 11000,
        .name = "Gokue",
    };
    newUser.diagnose();

    const sum = alsoAdd(8999, 2);

    std.debug.print(
        "{s}'s power level is {d}\n",
        .{
            newUser.name,
            newUser.power,
        },
    );
    std.debug.print("8999 + 2 = {d}\n", .{sum});
}
