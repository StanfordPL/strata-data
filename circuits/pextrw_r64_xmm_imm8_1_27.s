  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  movshdup %xmm1, %xmm14                          #  1     0     5      OPC=movshdup_xmm_xmm   
  vpmovzxwd %xmm14, %xmm1                         #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  vmovd %xmm9, %ebx                               #  4     0xf   4      OPC=vmovd_r32_xmm      
  retq                                            #  5     0x13  1      OPC=retq               
                                                                                               
.size target, .-target
