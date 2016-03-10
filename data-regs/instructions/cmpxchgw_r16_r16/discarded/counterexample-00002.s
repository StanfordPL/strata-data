  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  movzwq %bx, %r10  #  1     0     4      OPC=movzwq_r64_r16   
  xchgw %ax, %r10w  #  2     0x4   3      OPC=xchgw_r16_ax     
  cmovlew %ax, %cx  #  3     0x7   4      OPC=cmovlew_r16_r16  
  subw %bx, %r10w   #  4     0xb   4      OPC=subw_r16_r16     
  cmovzw %cx, %bx   #  5     0xf   4      OPC=cmovzw_r16_r16   
  retq              #  6     0x13  1      OPC=retq             
                                                               
.size target, .-target
