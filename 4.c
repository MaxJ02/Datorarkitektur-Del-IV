#include <stdint.h>

struct num
{
    uint8_t x;
    uint8_t y;
    uint8_t z;
};

/********************************************************************************
* subtract: Subtracts numbers x and y and stores the result in member z of the
* passed num struct.
*
* - self: Pointer to the num struct containing the numbers to subtract and the
*         destination for the result.
********************************************************************************/
static void subtract(struct num* self)
{
    self->z = self->x - self->y;
    return;
}

/********************************************************************************
* main: Subtracts two numbers x and y contained in a num struct by calling the
* subtract function. The result is stored in member z of the same struct.
********************************************************************************/
int main(void)
{
    struct num num1 = {
        .x = 10,
        .y = 8,
        .z = 0
    };
    subtract(&num1);
    return 0;
}
