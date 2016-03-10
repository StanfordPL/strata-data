  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  xorl %eax, %eax          #  1     0    2      OPC=xorl_r32_r32       
  andnl %eax, %eax, %r14d  #  2     0x2  5      OPC=andnl_r32_r32_r32  
  cltq                     #  3     0x7  2      OPC=cltq               
  adcb %bh, %al            #  4     0x9  2      OPC=adcb_r8_rh         
  sbbw %cx, %bx            #  5     0xb  3      OPC=sbbw_r16_r16       
  retq                     #  6     0xe  1      OPC=retq               
                                                                       
.size target, .-target
