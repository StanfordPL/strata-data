  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  xorps %xmm7, %xmm7       #  1     0    3      OPC=xorps_xmm_xmm      
  vpmovsxdq %xmm7, %ymm11  #  2     0x3  5      OPC=vpmovsxdq_ymm_xmm  
  movddup %xmm11, %xmm1    #  3     0x8  5      OPC=movddup_xmm_xmm    
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
