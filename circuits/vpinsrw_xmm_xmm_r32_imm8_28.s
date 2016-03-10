  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label     
  xchgw %bx, %r9w                 #  2     0x5   4      OPC=xchgw_r16_r16   
  vzeroall                        #  3     0x9   3      OPC=vzeroall        
  callq .move_064_128_r8_r9_xmm3  #  4     0xc   5      OPC=callq_label     
  movapd %xmm3, %xmm1             #  5     0x11  4      OPC=movapd_xmm_xmm  
  retq                            #  6     0x15  1      OPC=retq            
                                                                            
.size target, .-target
