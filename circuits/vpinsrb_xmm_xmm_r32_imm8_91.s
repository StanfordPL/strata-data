  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13          #  1     0     5      OPC=callq_label    
  vzeroall                                  #  2     0x5   3      OPC=vzeroall       
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label    
  xchgw %bx, %r8w                           #  4     0xd   4      OPC=xchgw_r16_r16  
  callq .move_064_128_r12_r13_xmm1          #  5     0x11  5      OPC=callq_label    
  callq .move_r8b_to_byte_11_of_ymm1        #  6     0x16  5      OPC=callq_label    
  retq                                      #  7     0x1b  1      OPC=retq           
                                                                                     
.size target, .-target
