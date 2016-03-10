  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm2_r12_r13          #  2     0x5   5      OPC=callq_label    
  xchgw %r13w, %r8w                         #  3     0xa   4      OPC=xchgw_r16_r16  
  vzeroall                                  #  4     0xe   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm1          #  5     0x11  5      OPC=callq_label    
  retq                                      #  6     0x16  1      OPC=retq           
                                                                                     
.size target, .-target
