  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  cmovgew %cx, %bx   #  1     0     4      OPC=cmovgew_r16_r16  
  xorw %dx, %dx      #  2     0x4   3      OPC=xorw_r16_r16     
  movzwq %cx, %r15   #  3     0x7   4      OPC=movzwq_r64_r16   
  cmovaw %r15w, %bx  #  4     0xb   5      OPC=cmovaw_r16_r16   
  retq               #  5     0x10  1      OPC=retq             
                                                                
.size target, .-target
