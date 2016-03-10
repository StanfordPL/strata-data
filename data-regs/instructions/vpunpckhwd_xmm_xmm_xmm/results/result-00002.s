  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label          
  callq .move_128_064_xmm3_r8_r9     #  2     0x5   5      OPC=callq_label          
  xorb %r9b, %r8b                    #  3     0xa   3      OPC=xorb_r8_r8           
  callq .move_064_128_r8_r9_xmm2     #  4     0xd   5      OPC=callq_label          
  vphsubd %xmm2, %xmm3, %xmm1        #  5     0x12  5      OPC=vphsubd_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  6     0x17  5      OPC=callq_label          
  punpckhwd %xmm3, %xmm1             #  7     0x1c  4      OPC=punpckhwd_xmm_xmm    
  retq                               #  8     0x20  1      OPC=retq                 
                                                                                    
.size target, .-target
