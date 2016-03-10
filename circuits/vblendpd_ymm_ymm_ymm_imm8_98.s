  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  vpmovsxbq %xmm2, %ymm6               #  1     0     5      OPC=vpmovsxbq_ymm_xmm         
  vmovsldup %ymm3, %ymm13              #  2     0x5   4      OPC=vmovsldup_ymm_ymm         
  vfnmsub132sd %xmm6, %xmm13, %xmm3    #  3     0x9   5      OPC=vfnmsub132sd_xmm_xmm_xmm  
  vmovddup %ymm2, %ymm12               #  4     0xe   4      OPC=vmovddup_ymm_ymm          
  vunpckhpd %ymm12, %ymm3, %ymm13      #  5     0x12  5      OPC=vunpckhpd_ymm_ymm_ymm     
  vmovups %ymm2, %ymm1                 #  6     0x17  4      OPC=vmovups_ymm_ymm           
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1b  5      OPC=callq_label               
  retq                                 #  8     0x20  1      OPC=retq                      
                                                                                           
.size target, .-target
