  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vbroadcastsd %xmm1, %ymm11                      #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vrcpss %xmm1, %xmm1, %xmm1                      #  2     0x5   4      OPC=vrcpss_xmm_xmm_xmm     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  vunpckhps %ymm11, %ymm1, %ymm11                 #  4     0xe   5      OPC=vunpckhps_ymm_ymm_ymm  
  vmovq %xmm11, %rbx                              #  5     0x13  5      OPC=vmovq_r64_xmm          
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
