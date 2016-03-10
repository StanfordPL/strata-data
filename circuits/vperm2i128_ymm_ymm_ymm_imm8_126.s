  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vmovdqu %ymm3, %ymm1                            #  1     0     4      OPC=vmovdqu_ymm_ymm    
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  vmovupd %ymm3, %ymm0                            #  3     0x9   4      OPC=vmovupd_ymm_ymm    
  vpxor %xmm0, %xmm8, %xmm5                       #  4     0xd   4      OPC=vpxor_xmm_xmm_xmm  
  pmovzxbd %xmm5, %xmm1                           #  5     0x11  5      OPC=pmovzxbd_xmm_xmm   
  retq                                            #  6     0x16  1      OPC=retq               
                                                                                               
.size target, .-target
