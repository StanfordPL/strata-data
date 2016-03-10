  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  rolb $0x1, %bh                            #  2     0x5   2      OPC=rolb_rh_one    
  xchgw %bx, %r9w                           #  3     0x7   4      OPC=xchgw_r16_r16  
  callq .move_r9b_to_byte_6_of_ymm1         #  4     0xb   5      OPC=callq_label    
  retq                                      #  5     0x10  1      OPC=retq           
                                                                                     
.size target, .-target
