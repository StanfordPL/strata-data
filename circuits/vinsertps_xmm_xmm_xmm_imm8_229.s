  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  xorq %r11, %r11                               #  1     0     3      OPC=xorq_r64_r64            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x3   5      OPC=callq_label             
  vcvtsi2ssl %r11d, %xmm2, %xmm10               #  3     0x8   5      OPC=vcvtsi2ssl_xmm_xmm_r32  
  vpbroadcastq %xmm6, %xmm4                     #  4     0xd   5      OPC=vpbroadcastq_xmm_xmm    
  vpandn %xmm10, %xmm4, %xmm1                   #  5     0x12  5      OPC=vpandn_xmm_xmm_xmm      
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
