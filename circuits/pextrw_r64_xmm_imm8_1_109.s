  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm14                 #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpmovzxwd %xmm14, %ymm1                         #  2     0x4   5      OPC=vpmovzxwd_ymm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label             
  movd %xmm11, %ebx                               #  4     0xe   5      OPC=movd_r32_xmm            
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
