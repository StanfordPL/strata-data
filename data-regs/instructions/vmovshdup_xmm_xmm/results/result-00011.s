  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm5, %xmm1                     #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vbroadcastss %xmm7, %ymm8                     #  3     0xa   5      OPC=vbroadcastss_ymm_xmm  
  punpcklqdq %xmm8, %xmm1                       #  4     0xf   5      OPC=punpcklqdq_xmm_xmm    
  retq                                          #  5     0x14  1      OPC=retq                  
                                                                                                
.size target, .-target
