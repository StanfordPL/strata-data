  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  vrcpps %xmm2, %xmm3  #  1     0    4      OPC=vrcpps_xmm_xmm  
  movaps %xmm3, %xmm1  #  2     0x4  3      OPC=movaps_xmm_xmm  
  minps %xmm3, %xmm1   #  3     0x7  3      OPC=minps_xmm_xmm   
  retq                 #  4     0xa  1      OPC=retq            
                                                                
.size target, .-target
