  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmulps %xmm2, %xmm1, %xmm4                      #  1     0     4      OPC=vmulps_xmm_xmm_xmm     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vaddps %xmm4, %xmm11, %xmm12                    #  3     0x9   4      OPC=vaddps_xmm_xmm_xmm     
  vunpckhps %ymm12, %ymm12, %ymm8                 #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  movddup %xmm8, %xmm1                            #  5     0x12  5      OPC=movddup_xmm_xmm        
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
