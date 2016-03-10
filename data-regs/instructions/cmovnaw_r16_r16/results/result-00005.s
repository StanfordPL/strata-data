  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  xchgb %bh, %bh       #  1     0    2      OPC=xchgb_rh_rh      
  movzwq %cx, %r10     #  2     0x2  4      OPC=movzwq_r64_r16   
  cmovnal %r10d, %ebx  #  3     0x6  4      OPC=cmovnal_r32_r32  
  retq                 #  4     0xa  1      OPC=retq             
                                                                 
.size target, .-target
