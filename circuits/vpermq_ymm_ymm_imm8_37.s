  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label               
  movapd %xmm2, %xmm0                   #  2     0x5   4      OPC=movapd_xmm_xmm            
  vfnmadd213sd %xmm2, %xmm0, %xmm0      #  3     0x9   5      OPC=vfnmadd213sd_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm13              #  4     0xe   5      OPC=punpcklqdq_xmm_xmm        
  vpunpckhqdq %ymm2, %ymm0, %ymm12      #  5     0x13  4      OPC=vpunpckhqdq_ymm_ymm_ymm   
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x17  5      OPC=callq_label               
  retq                                  #  7     0x1c  1      OPC=retq                      
                                                                                            
.size target, .-target
