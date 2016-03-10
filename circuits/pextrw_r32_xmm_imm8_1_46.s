  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq %xmm7, %r12                              #  2     0x5   5      OPC=movq_r64_xmm    
  movzwq %r12w, %r13                            #  3     0xa   4      OPC=movzwq_r64_r16  
  negq %r12                                     #  4     0xe   3      OPC=negq_r64        
  callq .read_of_into_rbx                       #  5     0x11  5      OPC=callq_label     
  orw %r13w, %bx                                #  6     0x16  4      OPC=orw_r16_r16     
  retq                                          #  7     0x1a  1      OPC=retq            
                                                                                          
.size target, .-target
