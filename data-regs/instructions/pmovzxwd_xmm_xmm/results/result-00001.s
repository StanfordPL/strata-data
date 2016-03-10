  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  xorps %xmm1, %xmm1                              #  1     0     3      OPC=xorps_xmm_xmm      
  callq .move_128_64_xmm2_xmm10_xmm11             #  2     0x3   5      OPC=callq_label        
  callq .move_64_128_xmm10_xmm11_xmm2             #  3     0x8   5      OPC=callq_label        
  vpmovzxwd %xmm2, %xmm5                          #  4     0xd   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  5     0x12  5      OPC=callq_label        
  vpxor %xmm5, %xmm8, %xmm3                       #  6     0x17  4      OPC=vpxor_xmm_xmm_xmm  
  paddq %xmm3, %xmm1                              #  7     0x1b  4      OPC=paddq_xmm_xmm      
  retq                                            #  8     0x1f  1      OPC=retq               
                                                                                               
.size target, .-target
