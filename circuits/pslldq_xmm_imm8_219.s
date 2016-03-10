  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  xorps %xmm1, %xmm1                              #  1     0     3      OPC=xorps_xmm_xmm      
  vcvtdq2ps %xmm1, %xmm3                          #  2     0x3   4      OPC=vcvtdq2ps_xmm_xmm  
  movlhps %xmm1, %xmm3                            #  3     0x7   3      OPC=movlhps_xmm_xmm    
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xa   5      OPC=callq_label        
  vpmovzxbd %xmm8, %ymm10                         #  5     0xf   5      OPC=vpmovzxbd_ymm_xmm  
  subpd %xmm10, %xmm1                             #  6     0x14  5      OPC=subpd_xmm_xmm      
  retq                                            #  7     0x19  1      OPC=retq               
                                                                                               
.size target, .-target
