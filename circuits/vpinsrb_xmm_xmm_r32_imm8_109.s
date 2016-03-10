  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovsd %xmm2, %xmm2, %xmm1          #  1     0     4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_byte_25_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label         
  xorb %bl, %r8b                      #  3     0x9   3      OPC=xorb_r8_r8          
  callq .move_r8b_to_byte_13_of_ymm1  #  4     0xc   5      OPC=callq_label         
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
