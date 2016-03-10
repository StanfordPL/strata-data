  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %xmm0            #  1     0     5      OPC=vpmovzxwq_xmm_xmm   
  vmaxps %ymm0, %ymm0, %ymm3        #  2     0x5   4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_128_064_xmm3_r10_r11  #  3     0x9   5      OPC=callq_label         
  movzwl %r11w, %ebx                #  4     0xe   4      OPC=movzwl_r32_r16      
  retq                              #  5     0x12  1      OPC=retq                
                                                                                  
.size target, .-target
