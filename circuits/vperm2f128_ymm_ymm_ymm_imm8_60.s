  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vminpd %xmm3, %xmm3, %xmm12        #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm  
  vmovapd %ymm12, %ymm10             #  3     0x9   5      OPC=vmovapd_ymm_ymm     
  vpandn %ymm3, %ymm10, %ymm1        #  4     0xe   4      OPC=vpandn_ymm_ymm_ymm  
  punpckhqdq %xmm9, %xmm1            #  5     0x12  5      OPC=punpckhqdq_xmm_xmm  
  retq                               #  6     0x17  1      OPC=retq                
                                                                                   
.size target, .-target
