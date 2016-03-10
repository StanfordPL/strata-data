  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovsldup %xmm2, %xmm8      #  1     0    4      OPC=vmovsldup_xmm_xmm   
  vmovss %xmm8, %xmm2, %xmm1  #  2     0x4  5      OPC=vmovss_xmm_xmm_xmm  
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target
