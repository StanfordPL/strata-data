  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                          
.target:                              #        0    0      OPC=<label>                     
  vfmaddsub231pd %xmm1, %xmm2, %xmm3  #  1     0    5      OPC=vfmaddsub231pd_xmm_xmm_xmm  
  vmovapd %xmm3, %xmm1                #  2     0x5  4      OPC=vmovapd_xmm_xmm             
  retq                                #  3     0x9  1      OPC=retq                        
                                                                                           
.size target, .-target