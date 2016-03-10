  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm11, %ymm1                      #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vmovddup %xmm10, %xmm10                         #  3     0xa   5      OPC=vmovddup_xmm_xmm       
  vpbroadcastq %xmm10, %ymm10                     #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm1, %ymm10, %ymm1                  #  5     0x14  4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x18  5      OPC=callq_label            
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
