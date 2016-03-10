  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  callq .move_64_128_xmm8_xmm9_xmm1     #  2     0x5   5      OPC=callq_label            
  vmovsd %xmm9, %xmm2, %xmm11           #  3     0xa   5      OPC=vmovsd_xmm_xmm_xmm     
  vunpckhpd %xmm1, %xmm8, %xmm10        #  4     0xf   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label            
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
