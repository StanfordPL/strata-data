  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  xorb %ch, %ch                   #  1     0     2      OPC=xorb_rh_rh     
  callq .read_sf_into_rbx         #  2     0x2   5      OPC=callq_label    
  callq .move_128_064_xmm1_r8_r9  #  3     0x7   5      OPC=callq_label    
  decw %bx                        #  4     0xc   3      OPC=decw_r16       
  xchgw %r9w, %bx                 #  5     0xf   4      OPC=xchgw_r16_r16  
  retq                            #  6     0x13  1      OPC=retq           
                                                                           
.size target, .-target
