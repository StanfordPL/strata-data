  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  movswq %cx, %rbp  #  1     0     4      OPC=movswq_r64_r16   
  movswq %bx, %r12  #  2     0x4   4      OPC=movswq_r64_r16   
  xorb %bh, %bh     #  3     0x8   2      OPC=xorb_rh_rh       
  orq %r12, %rbp    #  4     0xa   3      OPC=orq_r64_r64      
  cmovnbw %bp, %bx  #  5     0xd   4      OPC=cmovnbw_r16_r16  
  retq              #  6     0x11  1      OPC=retq             
                                                               
.size target, .-target
