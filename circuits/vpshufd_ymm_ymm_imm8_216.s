  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  vmovaps %xmm2, %xmm1                 #  1     0     4      OPC=vmovaps_xmm_xmm           
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label               
  vfnmadd231sd %xmm10, %xmm2, %xmm1    #  3     0x9   5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  vunpckhpd %ymm1, %ymm2, %ymm13       #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm     
  vpunpckldq %ymm13, %ymm2, %ymm1      #  5     0x12  5      OPC=vpunpckldq_ymm_ymm_ymm    
  retq                                 #  6     0x17  1      OPC=retq                      
                                                                                           
.size target, .-target
