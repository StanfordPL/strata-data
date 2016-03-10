  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vfmadd213ps %xmm10, %xmm2, %xmm3     #  2     0x5   5      OPC=vfmadd213ps_xmm_xmm_xmm  
  vfmadd231ps %xmm10, %xmm11, %xmm3    #  3     0xa   5      OPC=vfmadd231ps_xmm_xmm_xmm  
  vorps %ymm3, %ymm3, %ymm7            #  4     0xf   4      OPC=vorps_ymm_ymm_ymm        
  vmovsldup %ymm7, %ymm13              #  5     0x13  4      OPC=vmovsldup_ymm_ymm        
  vunpckhpd %ymm13, %ymm13, %ymm1      #  6     0x17  5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                                 #  7     0x1c  1      OPC=retq                     
                                                                                          
.size target, .-target
