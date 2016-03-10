  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  xorps %xmm1, %xmm2   #  1     0    3      OPC=xorps_xmm_xmm   
  andnps %xmm1, %xmm2  #  2     0x3  3      OPC=andnps_xmm_xmm  
  andnps %xmm1, %xmm1  #  3     0x6  3      OPC=andnps_xmm_xmm  
  por %xmm2, %xmm1     #  4     0x9  4      OPC=por_xmm_xmm     
  retq                 #  5     0xd  1      OPC=retq            
                                                                
.size target, .-target
