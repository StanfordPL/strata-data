  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  movhlps %xmm1, %xmm1                            #  1     0     3      OPC=movhlps_xmm_xmm    
  vpmovzxdq %xmm1, %ymm3                          #  2     0x3   5      OPC=vpmovzxdq_ymm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label        
  vmovd %xmm10, %ebx                              #  4     0xd   4      OPC=vmovd_r32_xmm      
  retq                                            #  5     0x11  1      OPC=retq               
                                                                                               
.size target, .-target
