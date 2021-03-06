  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label       
  subb %r11b, %r10b                  #  2     0x5   3      OPC=subb_r8_r8        
  callq .move_064_128_r10_r11_xmm2   #  3     0x8   5      OPC=callq_label       
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xd   5      OPC=callq_label       
  vmovddup %xmm9, %xmm1              #  5     0x12  5      OPC=vmovddup_xmm_xmm  
  retq                               #  6     0x17  1      OPC=retq              
                                                                                 
.size target, .-target
