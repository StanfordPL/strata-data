  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm8, %ymm1                          #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm   
  callq .move_128_64_xmm1_xmm8_xmm9               #  3     0xa   5      OPC=callq_label         
  unpckhps %xmm9, %xmm1                           #  4     0xf   4      OPC=unpckhps_xmm_xmm    
  punpcklqdq %xmm9, %xmm1                         #  5     0x13  5      OPC=punpcklqdq_xmm_xmm  
  vmovd %xmm1, %ebx                               #  6     0x18  4      OPC=vmovd_r32_xmm       
  retq                                            #  7     0x1c  1      OPC=retq                
                                                                                                
.size target, .-target
