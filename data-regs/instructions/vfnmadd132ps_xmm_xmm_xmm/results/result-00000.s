  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vmovupd %xmm3, %xmm5              #  1     0    4      OPC=vmovupd_xmm_xmm           
  vfnmadd213ps %xmm2, %xmm1, %xmm5  #  2     0x4  5      OPC=vfnmadd213ps_xmm_xmm_xmm  
  vpor %ymm5, %ymm5, %ymm1          #  3     0x9  4      OPC=vpor_ymm_ymm_ymm          
  retq                              #  4     0xd  1      OPC=retq                      
                                                                                       
.size target, .-target
