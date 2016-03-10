  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label         
  vzeroall                            #  2     0x5   3      OPC=vzeroall            
  vcvttpd2dq %ymm5, %xmm9             #  3     0x8   4      OPC=vcvttpd2dq_xmm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xc   5      OPC=callq_label         
  movq %r8, %r9                       #  5     0x11  3      OPC=movq_r64_r64        
  callq .move_064_128_r8_r9_xmm1      #  6     0x14  5      OPC=callq_label         
  retq                                #  7     0x19  1      OPC=retq                
                                                                                    
.size target, .-target
