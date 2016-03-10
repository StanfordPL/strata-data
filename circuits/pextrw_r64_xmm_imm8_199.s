  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label       
  movmskpd %xmm1, %rbx                #  2     0x5   4      OPC=movmskpd_r64_xmm  
  sarb $0x1, %bh                      #  3     0x9   2      OPC=sarb_rh_one       
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0xb   5      OPC=callq_label       
  callq .read_pf_into_rbx             #  5     0x10  5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx      #  6     0x15  5      OPC=callq_label       
  retq                                #  7     0x1a  1      OPC=retq              
                                                                                  
.size target, .-target
