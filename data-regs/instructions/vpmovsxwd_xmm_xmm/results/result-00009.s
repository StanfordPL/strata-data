  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label        
  vzeroall                          #  2     0x5   3      OPC=vzeroall           
  cvtss2sil %xmm13, %r11d           #  3     0x8   5      OPC=cvtss2sil_r32_xmm  
  callq .move_064_128_r10_r11_xmm3  #  4     0xd   5      OPC=callq_label        
  vpmovsxwd %xmm3, %ymm1            #  5     0x12  5      OPC=vpmovsxwd_ymm_xmm  
  retq                              #  6     0x17  1      OPC=retq               
                                                                                 
.size target, .-target
