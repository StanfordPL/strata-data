  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vpmovzxwq %xmm1, %ymm10           #  1     0     5      OPC=vpmovzxwq_ymm_xmm     
  vpbroadcastq %xmm10, %xmm4        #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  vaddss %xmm4, %xmm10, %xmm2       #  3     0xa   4      OPC=vaddss_xmm_xmm_xmm    
  callq .move_128_064_xmm2_r10_r11  #  4     0xe   5      OPC=callq_label           
  movslq %r11d, %rbx                #  5     0x13  3      OPC=movslq_r64_r32        
  retq                              #  6     0x16  1      OPC=retq                  
                                                                                    
.size target, .-target
