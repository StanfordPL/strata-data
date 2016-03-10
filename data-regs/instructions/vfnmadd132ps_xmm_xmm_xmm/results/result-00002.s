  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vfnmadd213ps %xmm2, %xmm1, %xmm3  #  1     0    5      OPC=vfnmadd213ps_xmm_xmm_xmm  
  vmaxss %xmm3, %xmm3, %xmm1        #  2     0x5  4      OPC=vmaxss_xmm_xmm_xmm        
  retq                              #  3     0x9  1      OPC=retq                      
                                                                                       
.size target, .-target
