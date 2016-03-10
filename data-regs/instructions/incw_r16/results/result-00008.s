  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .clear_pf          #  1     0     5      OPC=callq_label   
  callq .set_cf            #  2     0x5   5      OPC=callq_label   
  callq .read_pf_into_rcx  #  3     0xa   5      OPC=callq_label   
  adcw %cx, %bx            #  4     0xf   3      OPC=adcw_r16_r16  
  retq                     #  5     0x12  1      OPC=retq          
                                                                   
.size target, .-target
