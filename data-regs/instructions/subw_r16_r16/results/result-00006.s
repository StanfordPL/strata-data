  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32     
  xchgw %ax, %bx    #  2     0x2  3      OPC=xchgw_r16_r16    
  sbbw %cx, %ax     #  3     0x5  3      OPC=sbbw_r16_r16     
  cmovnew %ax, %bx  #  4     0x8  4      OPC=cmovnew_r16_r16  
  retq              #  5     0xc  1      OPC=retq             
                                                              
.size target, .-target
