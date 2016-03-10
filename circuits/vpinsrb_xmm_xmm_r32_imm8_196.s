  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vminss %xmm2, %xmm2, %xmm1          #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  callq .move_byte_21_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label         
  xorb %bl, %r9b                      #  3     0x9   3      OPC=xorb_r8_r8          
  callq .move_r9b_to_byte_4_of_ymm1   #  4     0xc   5      OPC=callq_label         
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
