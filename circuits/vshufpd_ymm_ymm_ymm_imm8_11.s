  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vpunpckhqdq %ymm3, %ymm3, %ymm10  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm   
  vbroadcastss %xmm3, %ymm6         #  2     0x4   5      OPC=vbroadcastss_ymm_xmm      
  vfnmadd213ps %ymm2, %ymm3, %ymm6  #  3     0x9   5      OPC=vfnmadd213ps_ymm_ymm_ymm  
  vsubpd %ymm3, %ymm6, %ymm14       #  4     0xe   4      OPC=vsubpd_ymm_ymm_ymm        
  unpckhpd %xmm14, %xmm2            #  5     0x12  5      OPC=unpckhpd_xmm_xmm          
  vpunpcklqdq %ymm10, %ymm2, %ymm1  #  6     0x17  5      OPC=vpunpcklqdq_ymm_ymm_ymm   
  retq                              #  7     0x1c  1      OPC=retq                      
                                                                                        
.size target, .-target
