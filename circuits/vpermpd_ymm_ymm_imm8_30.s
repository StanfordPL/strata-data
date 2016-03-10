  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  vmovss %xmm2, %xmm2, %xmm8            #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm     
  vunpckhpd %xmm2, %xmm2, %xmm5         #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm  
  movdqa %xmm9, %xmm12                  #  4     0xd   5      OPC=movdqa_xmm_xmm         
  vunpcklpd %ymm8, %ymm5, %ymm13        #  5     0x12  5      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
