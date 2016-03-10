  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  movswq %cx, %r14     #  1     0    4      OPC=movswq_r64_r16   
  xchgw %r14w, %bx     #  2     0x4  4      OPC=xchgw_r16_r16    
  cmovpel %r14d, %ebx  #  3     0x8  4      OPC=cmovpel_r32_r32  
  retq                 #  4     0xc  1      OPC=retq             
                                                                 
.size target, .-target
