  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vxorps %xmm6, %xmm6, %xmm11        #  1     0     4      OPC=vxorps_xmm_xmm_xmm        
  vfnmsub231ps %ymm1, %ymm11, %ymm1  #  2     0x4   5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  vfnmsub132ps %ymm11, %ymm3, %ymm3  #  3     0x9   5      OPC=vfnmsub132ps_ymm_ymm_ymm  
  vfmadd213ps %ymm3, %ymm2, %ymm1    #  4     0xe   5      OPC=vfmadd213ps_ymm_ymm_ymm   
  retq                               #  5     0x13  1      OPC=retq                      
                                                                                         
.size target, .-target
