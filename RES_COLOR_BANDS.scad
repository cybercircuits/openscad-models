/*!
 * \file RES_COLOR_BANDS.scad
 * 
 * \author Copyright (C) 2010 by Bert Timmerman <bert.timmerman@xs4all.nl>
 * 
 * \brief Select colors for color bands on resistors.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to 
 * the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor,
 * Boston,
 * MA 02110-1301, USA.
 */


include <COLORS.scad>


module RES_COLOR_BANDS (value, tolerance)
{
    /* Color band for tolerance. */
    if (tolerance = "0.05%")
    {
        band_tol = RES_GREY;
    }
    else if (tolerance = "0.1%")
    {
        band_tol = RES_VIOLET;
    }
    else if (tolerance = "0.25%")
    {
        band_tol = RES_BLUE;
    }
    else if (tolerance = "0.5%")
    {
        band_tol = RES_GREEN;
    }
    else if (tolerance = "1%")
    {
        band_tol = RES_BROWN;
    }
    else if (tolerance = "2%")
    {
        band_tol = RES_RED;
    }
    else if (tolerance = "5%")
    {
        band_tol = RES_GOLD;
    }
    else if (tolerance = "10%")
    {
        band_tol = RES_SILVER;
    }
    else if (tolerance = "20%")
    {
        band_tol = TRANSPARENT;
    }
    if (value = "0")
    {
        band_1 = TRANSPARENT;
        band_2 = RES_BLACK;
        band_3 = TRANSPARENT;
        band_4 = TRANSPARENT;
    }
    /* Color bands for E12 resistor series values. */
    else if (value = "1.0")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.2")
    {
        band_1 = RES_BROWN;
        band_2 = RES_RED;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.5")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREEN;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.8")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREY;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "2.2")
    {
        band_1 = RES_RED;
        band_2 = RES_RED;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "2.7")
    {
        band_1 = RES_RED;
        band_2 = RES_VIOLET;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "3.3")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_ORANGE;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "3.9")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_WHITE;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "4.7")
    {
        band_1 = RES_YELLOW;
        band_2 = RES_VIOLET;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "5.6")
    {
        band_1 = RES_GREEN;
        band_2 = RES_BLUE;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "6.8")
    {
        band_1 = RES_BLUE;
        band_2 = RES_VIOLET;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "8.2")
    {
        band_1 = RES_GREY;
        band_2 = RES_RED;
        band_3 = RES_GOLD;
        band_4 = TRANSPARENT;
    }
    else if (value = "10")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "12")
    {
        band_1 = RES_BROWN;
        band_2 = RES_RED;
        band_3  =RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "15")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREEN;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "18")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREY;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "22")
    {
        band_1 = RES_RED;
        band_2 = RES_RED;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "27")
    {
        band_1 = RES_RED;
        band_2 = RES_VIOLET;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "33")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_ORANGE;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "39")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_WHITE;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "47")
    {
        band_1 = RES_YELLOW;
        band_2 = RES_VIOLET;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "56")
    {
        band_1 = RES_GREEN;
        band_2 = RES_BLUE;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "68")
    {
        band_1 = RES_BLUE;
        band_2 = RES_VIOLET;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "82")
    {
        band_1 = RES_GREY;
        band_2 = RES_RED;
        band_3 = RES_BLACK;
        band_4 = TRANSPARENT;
    }
    else if (value = "100")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "120")
    {
        band_1 = RES_BROWN;
        band_2 = RES_RED;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "150")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREEN;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "180")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREY;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "220")
    {
        band_1 = RES_RED;
        band_2 = RES_RED;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "270")
    {
        band_1 = RES_RED;
        band_2 = RES_VIOLET;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "330")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_ORANGE;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "390")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_WHITE;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "470")
    {
        band_1 = RES_YELLOW;
        band_2 = RES_VIOLET;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "560")
    {
        band_1 = RES_GREEN;
        band_2 = RES_BLUE;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "680")
    {
        band_1 = RES_BLUE;
        band_2 = RES_VIOLET;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "820")
    {
        band_1 = RES_GREY;
        band_2 = RES_RED;
        band_3 = RES_BROWN;
        band_4 = TRANSPARENT;
    }
    else if (value = "1k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.2k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_RED;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.5k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREEN;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.8k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREY;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "2.2k")
    {
        band_1 = RES_RED;
        band_2 = RES_RED;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "2.7k")
    {
        band_1 = RES_RED;
        band_2 = RES_VIOLET;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "3.3k")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_ORANGE;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "3.9k")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_WHITE;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "4.7k")
    {
        band_1 = RES_YELLOW;
        band_2 = RES_VIOLET;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "5.6k")
    {
        band_1 = RES_GREEN;
        band_2 = RES_BLUE;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "6.8k")
    {
        band_1 = RES_BLUE;
        band_2 = RES_VIOLET;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "8.2k")
    {
        band_1 = RES_GREY;
        band_2 = RES_RED;
        band_3 = RES_RED;
        band_4 = TRANSPARENT;
    }
    else if (value = "10k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "12k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_RED;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "15k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREEN;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "18k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREY;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "22k")
    {
        band_1 = RES_RED;
        band_2 = RES_RED;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "27k")
    {
        band_1 = RES_RED;
        band_2 = RES_VIOLET;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "33k")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_ORANGE;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "39k")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_WHITE;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "47k")
    {
        band_1 = RES_YELLOW;
        band_2 = RES_VIOLET;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "56k")
    {
        band_1 = RES_GREEN;
        band_2 = RES_BLUE;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "68k")
    {
        band_1 = RES_BLUE;
        band_2 = RES_VIOLET;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "82k")
    {
        band_1 = RES_GREY;
        band_2 = RES_RED;
        band_3 = RES_ORANGE;
        band_4 = TRANSPARENT;
    }
    else if (value = "100k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "120k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_RED;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "150k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREEN;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "180k")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREY;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "220k")
    {
        band_1 = RES_RED;
        band_2 = RES_RED;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "270k")
    {
        band_1 = RES_RED;
        band_2 = RES_VIOLET;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "330k")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_ORANGE;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "390k")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_WHITE;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "470k")
    {
        band_1 = RES_YELLOW;
        band_2 = RES_VIOLET;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "560k")
    {
        band_1 = RES_GREEN;
        band_2 = RES_BLUE;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "680k")
    {
        band_1 = RES_BLUE;
        band_2 = RES_VIOLET;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "820k")
    {
        band_1 = RES_GREY;
        band_2 = RES_RED;
        band_3 = RES_YELLOW;
        band_4 = TRANSPARENT;
    }
    else if (value = "1M")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.2M")
    {
        band_1 = RES_BROWN;
        band_2 = RES_RED;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.5M")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREEN;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "1.8M")
    {
        band_1 = RES_BROWN;
        band_2 = RES_GREY;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "2.2M")
    {
        band_1 = RES_RED;
        band_2 = RES_RED;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "2.7M")
    {
        band_1 = RES_RED;
        band_2 = RES_VIOLET;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "3.3M")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_ORANGE;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "3.9M")
    {
        band_1 = RES_ORANGE;
        band_2 = RES_WHITE;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "4.7M")
    {
        band_1 = RES_YELLOW;
        band_2 = RES_VIOLET;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "5.6M")
    {
        band_1 = RES_GREEN;
        band_2 = RES_BLUE;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "6.8M")
    {
        band_1 = RES_BLUE;
        band_2 = RES_VIOLET;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "8.2M")
    {
        band_1 = RES_GREY;
        band_2 = RES_RED;
        band_3 = RES_GREEN;
        band_4 = TRANSPARENT;
    }
    else if (value = "10M")
    {
        band_1 = RES_BROWN;
        band_2 = RES_BLACK;
        band_3 = RES_BLUE;
        band_4 = TRANSPARENT;
    }
}


/* EOF */