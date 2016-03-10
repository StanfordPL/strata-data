  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm13         #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x5   5      OPC=callq_label        
  movd %xmm13, %ebx               #  3     0xa   5      OPC=movd_r32_xmm       
  xaddw %bx, %r9w                 #  4     0xf   5      OPC=xaddw_r16_r16      
  retq                            #  5     0x14  1      OPC=retq               
                                                                               
.size target, .-target
