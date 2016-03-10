  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vminsd %xmm1, %xmm1, %xmm8        #  1     0     4      OPC=vminsd_xmm_xmm_xmm  
  vrcpss %xmm8, %xmm8, %xmm3        #  2     0x4   5      OPC=vrcpss_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  3     0x9   5      OPC=callq_label         
  movq %r11, %rbx                   #  4     0xe   3      OPC=movq_r64_r64        
  orb %bh, %bh                      #  5     0x11  2      OPC=orb_rh_rh           
  retq                              #  6     0x13  1      OPC=retq                
                                                                                  
.size target, .-target
