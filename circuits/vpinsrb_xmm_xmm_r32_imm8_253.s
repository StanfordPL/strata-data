  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmaxss %xmm4, %xmm2, %xmm1                    #  2     0x5   4      OPC=vmaxss_xmm_xmm_xmm  
  movb %bl, %r9b                                #  3     0x9   3      OPC=movb_r8_r8          
  callq .move_r9b_to_byte_13_of_ymm1            #  4     0xc   5      OPC=callq_label         
  retq                                          #  5     0x11  1      OPC=retq                
                                                                                              
.size target, .-target
