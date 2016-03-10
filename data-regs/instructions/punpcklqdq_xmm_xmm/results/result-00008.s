  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label       
  notb %r8b                                 #  2     0x5   3      OPC=notb_r8           
  callq .move_r8b_to_byte_9_of_ymm1         #  3     0x8   5      OPC=callq_label       
  unpcklpd %xmm2, %xmm1                     #  4     0xd   4      OPC=unpcklpd_xmm_xmm  
  retq                                      #  5     0x11  1      OPC=retq              
                                                                                        
.size target, .-target
