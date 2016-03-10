  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  vmovddup %ymm2, %ymm1                 #  2     0x5   4      OPC=vmovddup_ymm_ymm       
  punpckhqdq %xmm9, %xmm1               #  3     0x9   5      OPC=punpckhqdq_xmm_xmm     
  callq .move_256_128_ymm1_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  vunpckhpd %xmm1, %xmm1, %xmm10        #  5     0x13  4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
