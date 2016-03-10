  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vcvtps2pd %xmm10, %xmm1                         #  2     0x5   5      OPC=vcvtps2pd_xmm_xmm  
  movd %ebx, %xmm11                               #  3     0xa   5      OPC=movd_xmm_r32       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label        
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
