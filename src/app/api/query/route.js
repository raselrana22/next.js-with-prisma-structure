import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

export async function POST(req, res) {
    const prisma = new PrismaClient()



    BigInt.prototype.toJSON = function () {
        return this.toString();
    }
    try {
        // const createData = await prisma.users.create({
        //     data: {
        //         firstName: "rasel",
        //         lastName: "rana",
        //         email: "rasel@rana123.com",
        //         mobile: "013333333",
        //         password: "andksd ",
        //         otp: "12434"
        //     },
        // })


        // const createData = await prisma.users.createMany({
        //     data: [
        //         {
        //             firstName: "rasel123",
        //             lastName: "rana",
        //             email: "rasel@rana12322.com",
        //             mobile: "013333333",
        //             password: "andksd ",
        //             otp: "12434"
        //         }, {
        //             firstName: "rasel1234",
        //             lastName: "rana",
        //             email: "rasel@rana12223.com",
        //             mobile: "013333333",
        //             password: "andksd ",
        //             otp: "12434"
        //         }, {
        //             firstName: "rasel213",
        //             lastName: "rana",
        //             email: "rasel@rana123fds.com",
        //             mobile: "013333333",
        //             password: "andksd ",
        //             otp: "12434"
        //         }
        //     ],
        // })

        const createData = await prisma.users.create({
            data: {
                firstName: "rasel",
                lastName: "rana",
                email: "rasel@rana12332234sdd.com",
                mobile: "013333333",
                password: "andksd ",
                otp: "12434"
            },
            customers: {
                create: {
                    name: "norm",
                    email: "rasel@ragbsns.com",
                    mobile: "01233344"
                }
            }
        })


        return NextResponse.json({ status: 'success', data: createData })

    } catch (error) {
        return NextResponse.json({ status: 'Fail', data: error })
    }
}