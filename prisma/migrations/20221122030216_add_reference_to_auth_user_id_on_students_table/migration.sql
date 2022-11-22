/*
  Warnings:

  - You are about to drop the column `cancelledAt` on the `enrollments` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[authUserId]` on the table `students` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "enrollments" DROP COLUMN "cancelledAt",
ADD COLUMN     "canceledAt" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "students" ADD COLUMN     "authUserId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "students_authUserId_key" ON "students"("authUserId");
