  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .write_cl_to_zf    #  1     0     5      OPC=callq_label    
  callq .read_zf_into_rbx  #  2     0x5   5      OPC=callq_label    
  movzbq %cl, %rbp         #  3     0xa   4      OPC=movzbq_r64_r8  
  xchgw %bp, %bx           #  4     0xe   3      OPC=xchgw_r16_r16  
  retq                     #  5     0x11  1      OPC=retq           
                                                                    
.size target, .-target
