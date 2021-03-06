  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm9, %ymm3           #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhpd %ymm3, %ymm2, %ymm1       #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vbroadcastss %xmm2, %xmm10          #  4     0xe   5      OPC=vbroadcastss_xmm_xmm   
  punpcklqdq %xmm10, %xmm1            #  5     0x13  5      OPC=punpcklqdq_xmm_xmm     
  retq                                #  6     0x18  1      OPC=retq                   
                                                                                       
.size target, .-target
