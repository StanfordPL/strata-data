  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                          
.target:                              #        0    0      OPC=<label>                     
  vfmaddsub132ps %xmm3, %xmm1, %xmm2  #  1     0    5      OPC=vfmaddsub132ps_xmm_xmm_xmm  
  vmovaps %ymm2, %ymm1                #  2     0x5  4      OPC=vmovaps_ymm_ymm             
  retq                                #  3     0x9  1      OPC=retq                        
                                                                                           
.size target, .-target
