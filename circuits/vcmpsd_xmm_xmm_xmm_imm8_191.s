  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label               
  vzeroall                            #  2     0x5   3      OPC=vzeroall                  
  vfnmsub132ps %xmm11, %xmm3, %xmm10  #  3     0x8   5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  vpsubq %xmm10, %xmm3, %xmm1         #  4     0xd   5      OPC=vpsubq_xmm_xmm_xmm        
  vcvttsd2sil %xmm5, %r10d            #  5     0x12  4      OPC=vcvttsd2sil_r32_xmm       
  notq %r10                           #  6     0x16  3      OPC=notq_r64                  
  callq .move_064_128_r10_r11_xmm1    #  7     0x19  5      OPC=callq_label               
  retq                                #  8     0x1e  1      OPC=retq                      
                                                                                          
.size target, .-target
