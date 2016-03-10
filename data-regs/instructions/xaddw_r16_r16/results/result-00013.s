  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movb %bh, %bh                     #  1     0     2      OPC=movb_rh_rh     
  callq .move_016_008_cx_r12b_r13b  #  2     0x2   5      OPC=callq_label    
  addw %cx, %cx                     #  3     0x7   3      OPC=addw_r16_r16   
  movw %bx, %r8w                    #  4     0xa   4      OPC=movw_r16_r16   
  callq .read_cf_into_rcx           #  5     0xe   5      OPC=callq_label    
  xchgw %bx, %cx                    #  6     0x13  3      OPC=xchgw_r16_r16  
  callq .move_008_016_r12b_r13b_bx  #  7     0x16  5      OPC=callq_label    
  addw %r8w, %bx                    #  8     0x1b  4      OPC=addw_r16_r16   
  retq                              #  9     0x1f  1      OPC=retq           
                                                                             
.size target, .-target
