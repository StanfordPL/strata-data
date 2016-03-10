  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label   
  callq .move_064_032_rbx_r12d_r13d  #  2     0x5   5      OPC=callq_label   
  callq .clear_cf                    #  3     0xa   5      OPC=callq_label   
  adcw %r12w, %bx                    #  4     0xf   4      OPC=adcw_r16_r16  
  sete %bl                           #  5     0x13  3      OPC=sete_r8       
  retq                               #  6     0x16  1      OPC=retq          
                                                                             
.size target, .-target
