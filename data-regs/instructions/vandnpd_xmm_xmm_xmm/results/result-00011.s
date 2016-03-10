  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  maxss %xmm2, %xmm2    #  1     0    4      OPC=maxss_xmm_xmm    
  andnps %xmm3, %xmm2   #  2     0x4  3      OPC=andnps_xmm_xmm   
  vmovdqa %xmm2, %xmm1  #  3     0x7  4      OPC=vmovdqa_xmm_xmm  
  retq                  #  4     0xb  1      OPC=retq             
                                                                  
.size target, .-target
