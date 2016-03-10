  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  andpd %xmm1, %xmm1   #  1     0    4      OPC=andpd_xmm_xmm   
  minps %xmm1, %xmm1   #  2     0x4  3      OPC=minps_xmm_xmm   
  andnps %xmm1, %xmm1  #  3     0x7  3      OPC=andnps_xmm_xmm  
  retq                 #  4     0xa  1      OPC=retq            
                                                                
.size target, .-target
