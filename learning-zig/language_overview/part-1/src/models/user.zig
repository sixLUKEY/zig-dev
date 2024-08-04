const std = @import("std");
pub const User = struct {
    power: u64,
    name: []const u8,

    pub const POWER_LEVEL = 10000;

    pub fn init(name: []const u8, power: u64) User {
        // instead of return User{...};
        return .{
            .name = name,
            .power = power,
        };
    }

    pub fn diagnose(user: User) void {
        if (user.power >= POWER_LEVEL) {
            std.debug.print("Its over {d}!!!\n", .{POWER_LEVEL});
        }
    }
};
