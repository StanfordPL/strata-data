  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  vmovd %xmm1, %r10d       #  1     0     5      OPC=vmovd_r32_xmm    
  xorl %r9d, %r9d          #  2     0x5   3      OPC=xorl_r32_r32     
  callq .read_sf_into_rbx  #  3     0x8   5      OPC=callq_label      
  cmovgel %r10d, %ebx      #  4     0xd   4      OPC=cmovgel_r32_r32  
  retq                     #  5     0x11  1      OPC=retq             
                                                                      
.size target, .-target
