  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovdqu %xmm2, %xmm1   #  1     0    4      OPC=vmovdqu_xmm_xmm  
  vmovupd %xmm3, %xmm11  #  2     0x4  4      OPC=vmovupd_xmm_xmm  
  mulsd %xmm11, %xmm1    #  3     0x8  5      OPC=mulsd_xmm_xmm    
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
