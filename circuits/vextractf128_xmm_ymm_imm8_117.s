  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  callq .move_128_256_xmm10_xmm11_ymm3  #  2     0x5   5      OPC=callq_label               
  orps %xmm10, %xmm3                    #  3     0xa   4      OPC=orps_xmm_xmm              
  vpunpckhqdq %ymm3, %ymm1, %ymm3       #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm   
  vfnmadd132sd %xmm10, %xmm3, %xmm1     #  5     0x12  5      OPC=vfnmadd132sd_xmm_xmm_xmm  
  movupd %xmm11, %xmm1                  #  6     0x17  5      OPC=movupd_xmm_xmm            
  retq                                  #  7     0x1c  1      OPC=retq                      
                                                                                            
.size target, .-target
