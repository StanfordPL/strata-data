  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movdqa %xmm2, %xmm3                             #  1     0     4      OPC=movdqa_xmm_xmm         
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vpxor %xmm7, %xmm7, %xmm9                       #  3     0x9   4      OPC=vpxor_xmm_xmm_xmm      
  vcvtss2sd %xmm2, %xmm2, %xmm1                   #  4     0xd   4      OPC=vcvtss2sd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
