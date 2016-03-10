  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  xorb %ah, %ah                             #  1     0     2      OPC=xorb_rh_rh     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x2   5      OPC=callq_label    
  callq .read_pf_into_rbx                   #  3     0x7   5      OPC=callq_label    
  xchgw %r9w, %bx                           #  4     0xc   4      OPC=xchgw_r16_r16  
  retq                                      #  5     0x10  1      OPC=retq           
                                                                                     
.size target, .-target
