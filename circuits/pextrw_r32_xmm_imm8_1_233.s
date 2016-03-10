  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1                          #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm8, %ebx                           #  3     0xa   5      OPC=vmovmskpd_r32_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d    #  4     0xf   5      OPC=callq_label        
  testw %r10w, %r11w                              #  5     0x14  4      OPC=testw_r16_r16      
  cmovgel %r12d, %ebx                             #  6     0x18  4      OPC=cmovgel_r32_r32    
  retq                                            #  7     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
