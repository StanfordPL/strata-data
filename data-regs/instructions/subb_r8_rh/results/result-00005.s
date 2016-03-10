  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  xorb %al, %al     #  1     0     2      OPC=xorb_r8_r8       
  movzwq %ax, %r10  #  2     0x2   4      OPC=movzwq_r64_r16   
  cmovncw %ax, %ax  #  3     0x6   4      OPC=cmovncw_r16_r16  
  xchgw %r10w, %ax  #  4     0xa   4      OPC=xchgw_r16_r16    
  rcll $0x1, %r10d  #  5     0xe   3      OPC=rcll_r32_one     
  sbbb %ah, %bl     #  6     0x11  2      OPC=sbbb_r8_rh       
  retq              #  7     0x13  1      OPC=retq             
                                                               
.size target, .-target
