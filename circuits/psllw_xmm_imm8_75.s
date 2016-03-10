  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovdqu %xmm1, %xmm10  #  1     0    4      OPC=vmovdqu_xmm_xmm  
  xorpd %xmm10, %xmm1    #  2     0x4  5      OPC=xorpd_xmm_xmm    
  subsd %xmm1, %xmm1     #  3     0x9  4      OPC=subsd_xmm_xmm    
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
