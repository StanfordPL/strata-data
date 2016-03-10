  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vxorpd %xmm8, %xmm1, %xmm10                     #  2     0x5   5      OPC=vxorpd_xmm_xmm_xmm  
  vpmovzxwq %xmm10, %xmm4                         #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm   
  xorps %xmm1, %xmm4                              #  4     0xf   3      OPC=xorps_xmm_xmm       
  movss %xmm4, %xmm1                              #  5     0x12  4      OPC=movss_xmm_xmm       
  retq                                            #  6     0x16  1      OPC=retq                
                                                                                                
.size target, .-target
