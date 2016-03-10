  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label    
  negw %bx                 #  2     0x5   3      OPC=negw_r16       
  callq .read_sf_into_rcx  #  3     0x8   5      OPC=callq_label    
  callq .read_zf_into_rbx  #  4     0xd   5      OPC=callq_label    
  xchgw %cx, %bx           #  5     0x12  3      OPC=xchgw_r16_r16  
  retq                     #  6     0x15  1      OPC=retq           
                                                                    
.size target, .-target
