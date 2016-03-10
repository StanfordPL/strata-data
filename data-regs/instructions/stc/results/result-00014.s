  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  xorl %eax, %eax                 #  1     0     2      OPC=xorl_r32_r32   
  movzbq %al, %r12                #  2     0x2   4      OPC=movzbq_r64_r8  
  callq .read_pf_into_rbx         #  3     0x6   5      OPC=callq_label    
  xchgw %ax, %r12w                #  4     0xb   4      OPC=xchgw_r16_r16  
  callq .move_016_008_bx_r8b_r9b  #  5     0xf   5      OPC=callq_label    
  decw %r12w                      #  6     0x14  4      OPC=decw_r16       
  xaddb %r12b, %r8b               #  7     0x18  4      OPC=xaddb_r8_r8    
  retq                            #  8     0x1c  1      OPC=retq           
                                                                           
.size target, .-target
