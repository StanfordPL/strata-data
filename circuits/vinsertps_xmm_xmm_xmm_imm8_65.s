  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label             
  xorl %r9d, %r9d                   #  2     0x5   3      OPC=xorl_r32_r32            
  callq .move_064_128_r10_r11_xmm2  #  3     0x8   5      OPC=callq_label             
  callq .move_064_128_r10_r11_xmm3  #  4     0xd   5      OPC=callq_label             
  vcvtsi2ssl %r9d, %xmm3, %xmm1     #  5     0x12  5      OPC=vcvtsi2ssl_xmm_xmm_r32  
  retq                              #  6     0x17  1      OPC=retq                    
                                                                                      
.size target, .-target
