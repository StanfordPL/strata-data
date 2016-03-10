  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  movaps %xmm3, %xmm7               #  1     0     3      OPC=movaps_xmm_xmm    
  addsubps %xmm7, %xmm2             #  2     0x3   4      OPC=addsubps_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  3     0x7   5      OPC=callq_label       
  xchgb %r11b, %r11b                #  4     0xc   3      OPC=xchgb_r8_r8       
  vzeroall                          #  5     0xf   3      OPC=vzeroall          
  callq .move_064_128_r10_r11_xmm1  #  6     0x12  5      OPC=callq_label       
  retq                              #  7     0x17  1      OPC=retq              
                                                                                
.size target, .-target
