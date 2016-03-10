  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vfnmsub231ps %xmm1, %xmm2, %xmm3  #  1     0    5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vmovapd %ymm3, %ymm1              #  2     0x5  4      OPC=vmovapd_ymm_ymm           
  retq                              #  3     0x9  1      OPC=retq                      
                                                                                       
.size target, .-target
