  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vpxor %xmm2, %xmm2, %xmm4         #  1     0    4      OPC=vpxor_xmm_xmm_xmm         
  vfnmsub213ps %ymm1, %ymm4, %ymm1  #  2     0x4  5      OPC=vfnmsub213ps_ymm_ymm_ymm  
  vfmadd213ps %ymm3, %ymm2, %ymm1   #  3     0x9  5      OPC=vfmadd213ps_ymm_ymm_ymm   
  retq                              #  4     0xe  1      OPC=retq                      
                                                                                       
.size target, .-target
