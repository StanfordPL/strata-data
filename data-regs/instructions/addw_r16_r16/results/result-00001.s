  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_cx_r12b_r13b  #  1     0     5      OPC=callq_label     
  callq .set_cf                     #  2     0x5   5      OPC=callq_label     
  callq .read_cf_into_rcx           #  3     0xa   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_cx  #  4     0xf   5      OPC=callq_label     
  callq .clear_cf                   #  5     0x14  5      OPC=callq_label     
  adcw %bx, %cx                     #  6     0x19  3      OPC=adcw_r16_r16    
  movslq %ecx, %r13                 #  7     0x1c  3      OPC=movslq_r64_r32  
  movslq %r13d, %rbx                #  8     0x1f  3      OPC=movslq_r64_r32  
  retq                              #  9     0x22  1      OPC=retq            
                                                                              
.size target, .-target
