  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .read_zf_into_rbx         #  1     0     5      OPC=callq_label     
  movzwl %bx, %r8d                #  2     0x5   4      OPC=movzwl_r32_r16  
  callq .move_016_008_bx_r8b_r9b  #  3     0x9   5      OPC=callq_label     
  xorq %rbx, %rbx                 #  4     0xe   3      OPC=xorq_r64_r64    
  callq .read_pf_into_rbx         #  5     0x11  5      OPC=callq_label     
  xchgw %bx, %r8w                 #  6     0x16  4      OPC=xchgw_r16_r16   
  retq                            #  7     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
