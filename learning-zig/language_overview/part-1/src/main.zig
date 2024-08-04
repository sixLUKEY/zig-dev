const std = @import("std");
const user = @import("models/user.zig");
const User = user.User;
const maxPower = user.MAX_POWER;

// This code wont compile if `main` isnt public
pub fn main() void {
    const newUser = User{
        .power = 2000,
        .name = "Gokue",
    };

    std.debug.print("{s}'s power level is {d}\n", .{
        newUser.name,
        newUser.power,
    });
}
