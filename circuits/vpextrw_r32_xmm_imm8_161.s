  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpmovzxwq %xmm1, %xmm1            #  1     0     5      OPC=vpmovzxwq_xmm_xmm       
  vcvtdq2pd %xmm1, %xmm4            #  2     0x5   4      OPC=vcvtdq2pd_xmm_xmm       
  vpunpckhdq %ymm4, %ymm1, %ymm2    #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_128_064_xmm2_r10_r11  #  4     0xd   5      OPC=callq_label             
  movzwq %r10w, %rbx                #  5     0x12  4      OPC=movzwq_r64_r16          
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target
