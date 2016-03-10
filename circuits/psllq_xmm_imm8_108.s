  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  mulps %xmm1, %xmm1   #  1     0    3      OPC=mulps_xmm_xmm   
  andnps %xmm1, %xmm1  #  2     0x3  3      OPC=andnps_xmm_xmm  
  maxsd %xmm1, %xmm1   #  3     0x6  4      OPC=maxsd_xmm_xmm   
  retq                 #  4     0xa  1      OPC=retq            
                                                                
.size target, .-target
