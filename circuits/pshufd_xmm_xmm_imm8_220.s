  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm11, %ymm0                      #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  movddup %xmm2, %xmm3                            #  3     0xa   4      OPC=movddup_xmm_xmm        
  vunpckhps %xmm0, %xmm3, %xmm8                   #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  movapd %xmm8, %xmm1                             #  5     0x12  5      OPC=movapd_xmm_xmm         
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
